#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_7__ {int io_eof_reached; int io_error; int seek_completed; int forwards_capacity; int inner_io_error; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond_wakeup_main; int /*<<< orphan*/  cond_wakeup_background; scalar_t__ seek_request; scalar_t__ seek_ret; int /*<<< orphan*/  seek_whence; int /*<<< orphan*/  seek_pos; int /*<<< orphan*/  inner; int /*<<< orphan*/  ring; } ;
typedef  int /*<<< orphan*/  RingBuffer ;
typedef  TYPE_2__ Context ;

/* Variables and functions */
 int AVERROR_EXIT ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,void*,int,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ wrapped_url_read ; 

__attribute__((used)) static void *FUNC13(void *arg)
{
    URLContext   *h    = arg;
    Context      *c    = h->priv_data;
    RingBuffer   *ring = &c->ring;
    int           ret  = 0;
    int64_t       seek_ret;
    int           is_full_speed = 1;
    int64_t       count_bytes = 0;
    int64_t       count_start_time_micro = FUNC2();

    while (1) {
        int fifo_space, to_copy;

        FUNC8(&c->mutex);
        if (FUNC1(h)) {
            c->io_eof_reached = 1;
            c->io_error       = AVERROR_EXIT;
            FUNC6(&c->cond_wakeup_main);
            FUNC9(&c->mutex);
            break;
        }

        if (c->seek_request) {
            seek_ret = FUNC5(c->inner, c->seek_pos, c->seek_whence);
            if (seek_ret < 0) {
                c->io_eof_reached = 1;
                c->io_error       = (int)seek_ret;
            } else {
                c->io_eof_reached = 0;
                c->io_error       = 0;
            }

            c->seek_completed = 1;
            c->seek_ret       = seek_ret;
            c->seek_request   = 0;

            FUNC11(ring);

            FUNC6(&c->cond_wakeup_main);
            FUNC9(&c->mutex);

            is_full_speed = 0;
            continue;
        }

        fifo_space = FUNC12(ring);
        if (c->io_eof_reached || fifo_space <= 0) {
            FUNC6(&c->cond_wakeup_main);
            FUNC7(&c->cond_wakeup_background, &c->mutex);
            FUNC9(&c->mutex);
            is_full_speed = 0;
            continue;
        }
        FUNC9(&c->mutex);

        to_copy = FUNC0(4096, fifo_space);
        ret = FUNC10(ring, (void *)h, to_copy, (void *)wrapped_url_read);
        if (ret > 0) {
            count_bytes += ret;
            if (count_bytes > FUNC0((1 * 1024 * 1024), c->forwards_capacity)) {
                int64_t now = FUNC2();
                FUNC3(h, is_full_speed, count_bytes, now - count_start_time_micro);
                is_full_speed = 1;
                count_bytes = 0;
                count_start_time_micro = now;
            }
        }

        FUNC8(&c->mutex);
        if (ret <= 0) {
            c->io_eof_reached = 1;
            if (c->inner_io_error < 0)
                c->io_error = c->inner_io_error;
        }

        FUNC6(&c->cond_wakeup_main);
        FUNC9(&c->mutex);

        FUNC4(h);
    }

    return NULL;
}