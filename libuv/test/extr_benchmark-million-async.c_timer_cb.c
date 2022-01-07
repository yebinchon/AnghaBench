
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_timer_t ;
typedef int uv_handle_t ;
struct TYPE_4__ {int * data; } ;
typedef TYPE_1__ uv_async_t ;
struct TYPE_5__ {int handles_seen; TYPE_1__* async_handles; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int ASSERT (int) ;
 TYPE_2__* container ;
 int done ;
 int thread_id ;
 int uv_close (int *,int *) ;
 scalar_t__ uv_thread_join (int *) ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  unsigned i;

  done = 1;
  ASSERT(0 == uv_thread_join(&thread_id));

  for (i = 0; i < ARRAY_SIZE(container->async_handles); i++) {
    uv_async_t* handle = container->async_handles + i;

    if (handle->data != ((void*)0))
      container->handles_seen++;

    uv_close((uv_handle_t*) handle, ((void*)0));
  }

  uv_close((uv_handle_t*) handle, ((void*)0));
}
