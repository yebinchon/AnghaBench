
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_evloop_epoll_t {int ep; } ;
typedef int h2o_evloop_t ;


 int close (int ) ;

__attribute__((used)) static void evloop_do_dispose(h2o_evloop_t *_loop)
{
    struct st_h2o_evloop_epoll_t *loop = (struct st_h2o_evloop_epoll_t *)_loop;
    close(loop->ep);
}
