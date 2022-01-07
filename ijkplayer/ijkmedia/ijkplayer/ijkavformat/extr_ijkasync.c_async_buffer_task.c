
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {int io_eof_reached; int io_error; int seek_completed; int forwards_capacity; int inner_io_error; int mutex; int cond_wakeup_main; int cond_wakeup_background; scalar_t__ seek_request; scalar_t__ seek_ret; int seek_whence; int seek_pos; int inner; int ring; } ;
typedef int RingBuffer ;
typedef TYPE_2__ Context ;


 int AVERROR_EXIT ;
 scalar_t__ FFMIN (int,int) ;
 scalar_t__ async_check_interrupt (TYPE_1__*) ;
 scalar_t__ av_gettime_relative () ;
 int call_inject_async_fill_speed (TYPE_1__*,int,scalar_t__,scalar_t__) ;
 int call_inject_statistic (TYPE_1__*) ;
 scalar_t__ ffurl_seek (int ,int ,int ) ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ring_generic_write (int *,void*,int,void*) ;
 int ring_reset (int *) ;
 int ring_space (int *) ;
 scalar_t__ wrapped_url_read ;

__attribute__((used)) static void *async_buffer_task(void *arg)
{
    URLContext *h = arg;
    Context *c = h->priv_data;
    RingBuffer *ring = &c->ring;
    int ret = 0;
    int64_t seek_ret;
    int is_full_speed = 1;
    int64_t count_bytes = 0;
    int64_t count_start_time_micro = av_gettime_relative();

    while (1) {
        int fifo_space, to_copy;

        pthread_mutex_lock(&c->mutex);
        if (async_check_interrupt(h)) {
            c->io_eof_reached = 1;
            c->io_error = AVERROR_EXIT;
            pthread_cond_signal(&c->cond_wakeup_main);
            pthread_mutex_unlock(&c->mutex);
            break;
        }

        if (c->seek_request) {
            seek_ret = ffurl_seek(c->inner, c->seek_pos, c->seek_whence);
            if (seek_ret < 0) {
                c->io_eof_reached = 1;
                c->io_error = (int)seek_ret;
            } else {
                c->io_eof_reached = 0;
                c->io_error = 0;
            }

            c->seek_completed = 1;
            c->seek_ret = seek_ret;
            c->seek_request = 0;

            ring_reset(ring);

            pthread_cond_signal(&c->cond_wakeup_main);
            pthread_mutex_unlock(&c->mutex);

            is_full_speed = 0;
            continue;
        }

        fifo_space = ring_space(ring);
        if (c->io_eof_reached || fifo_space <= 0) {
            pthread_cond_signal(&c->cond_wakeup_main);
            pthread_cond_wait(&c->cond_wakeup_background, &c->mutex);
            pthread_mutex_unlock(&c->mutex);
            is_full_speed = 0;
            continue;
        }
        pthread_mutex_unlock(&c->mutex);

        to_copy = FFMIN(4096, fifo_space);
        ret = ring_generic_write(ring, (void *)h, to_copy, (void *)wrapped_url_read);
        if (ret > 0) {
            count_bytes += ret;
            if (count_bytes > FFMIN((1 * 1024 * 1024), c->forwards_capacity)) {
                int64_t now = av_gettime_relative();
                call_inject_async_fill_speed(h, is_full_speed, count_bytes, now - count_start_time_micro);
                is_full_speed = 1;
                count_bytes = 0;
                count_start_time_micro = now;
            }
        }

        pthread_mutex_lock(&c->mutex);
        if (ret <= 0) {
            c->io_eof_reached = 1;
            if (c->inner_io_error < 0)
                c->io_error = c->inner_io_error;
        }

        pthread_cond_signal(&c->cond_wakeup_main);
        pthread_mutex_unlock(&c->mutex);

        call_inject_statistic(h);
    }

    return ((void*)0);
}
