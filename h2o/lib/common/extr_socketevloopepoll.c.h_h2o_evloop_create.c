
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_evloop_epoll_t {int super; int ep; } ;
typedef int h2o_evloop_t ;
typedef int buf ;


 scalar_t__ EAGAIN ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int cloexec_mutex ;
 scalar_t__ create_evloop (int) ;
 int epoll_create (int) ;
 scalar_t__ errno ;
 int fcntl (int ,int ,int ) ;
 int h2o_fatal (char*,int ) ;
 int h2o_strerror_r (scalar_t__,char*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

h2o_evloop_t *h2o_evloop_create(void)
{
    struct st_h2o_evloop_epoll_t *loop = (struct st_h2o_evloop_epoll_t *)create_evloop(sizeof(*loop));

    pthread_mutex_lock(&cloexec_mutex);
    loop->ep = epoll_create(10);
    while (fcntl(loop->ep, F_SETFD, FD_CLOEXEC) == -1) {
        if (errno != EAGAIN) {
            char buf[128];
            h2o_fatal("h2o_evloop_create: failed to set FD_CLOEXEC: %s\n", h2o_strerror_r(errno, buf, sizeof(buf)));
        }
    }
    pthread_mutex_unlock(&cloexec_mutex);

    return &loop->super;
}
