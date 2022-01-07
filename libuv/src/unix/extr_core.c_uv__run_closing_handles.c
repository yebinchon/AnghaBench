
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* closing_handles; } ;
typedef TYPE_1__ uv_loop_t ;
struct TYPE_6__ {struct TYPE_6__* next_closing; } ;
typedef TYPE_2__ uv_handle_t ;


 int uv__finish_close (TYPE_2__*) ;

__attribute__((used)) static void uv__run_closing_handles(uv_loop_t* loop) {
  uv_handle_t* p;
  uv_handle_t* q;

  p = loop->closing_handles;
  loop->closing_handles = ((void*)0);

  while (p) {
    q = p->next_closing;
    uv__finish_close(p);
    p = q;
  }
}
