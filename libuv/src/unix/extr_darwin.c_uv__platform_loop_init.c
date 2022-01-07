
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * cf_state; } ;
typedef TYPE_1__ uv_loop_t ;


 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ uv__kqueue_init (TYPE_1__*) ;

int uv__platform_loop_init(uv_loop_t* loop) {
  loop->cf_state = ((void*)0);

  if (uv__kqueue_init(loop))
    return UV__ERR(errno);

  return 0;
}
