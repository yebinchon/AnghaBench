
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_thread_t ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ uv_thread_options_t ;


 int UV_THREAD_NO_FLAGS ;
 int uv_thread_create_ex (int *,TYPE_1__*,void (*) (void*),void*) ;

int uv_thread_create(uv_thread_t *tid, void (*entry)(void *arg), void *arg) {
  uv_thread_options_t params;
  params.flags = UV_THREAD_NO_FLAGS;
  return uv_thread_create_ex(tid, &params, entry, arg);
}
