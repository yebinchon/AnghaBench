
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int write; TYPE_4__* read; } ;
struct TYPE_6__ {TYPE_1__ async; } ;
typedef TYPE_2__ h2o_multithread_queue_t ;
typedef int h2o_loop_t ;
typedef int buf ;
struct TYPE_7__ {TYPE_2__* data; } ;


 int EFD_CLOEXEC ;
 int EFD_NONBLOCK ;
 int F_SETFL ;
 int O_NONBLOCK ;
 scalar_t__ cloexec_pipe (int*) ;
 int errno ;
 int eventfd (int ,int) ;
 int fcntl (int,int ,int ) ;
 void* h2o_evloop_socket_create (int *,int,int ) ;
 int h2o_fatal (char*,int ) ;
 int h2o_socket_read_start (TYPE_4__*,int ) ;
 int h2o_strerror_r (int ,char*,int) ;
 int on_read ;

__attribute__((used)) static void init_async(h2o_multithread_queue_t *queue, h2o_loop_t *loop)
{





    int fd;
    char buf[128];

    fd = eventfd(0, EFD_NONBLOCK | EFD_CLOEXEC);
    if (fd == -1) {
        h2o_fatal("eventfd: %s", h2o_strerror_r(errno, buf, sizeof(buf)));
    }
    queue->async.write = fd;
    queue->async.read = h2o_evloop_socket_create(loop, fd, 0);
    queue->async.read->data = queue;
    h2o_socket_read_start(queue->async.read, on_read);
}
