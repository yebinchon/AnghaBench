
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_1__ uv_handle_t ;
struct TYPE_6__ {int i; int (* make_connect ) (TYPE_2__*) ;} ;
typedef TYPE_2__ conn_rec ;


 int ASSERT (int ) ;
 int closed_streams ;
 int loop ;
 int printf (char*,int) ;
 int start ;
 int stub1 (TYPE_2__*) ;
 int uv_now (int ) ;

__attribute__((used)) static void close_cb(uv_handle_t* handle) {
  conn_rec* p = (conn_rec*)handle->data;

  ASSERT(handle != ((void*)0));
  closed_streams++;





  if (uv_now(loop) - start < 10000) {
    p->make_connect(p);
  }
}
