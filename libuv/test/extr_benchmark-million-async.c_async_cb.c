
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; } ;
typedef TYPE_1__ uv_async_t ;
struct TYPE_5__ {int async_events; } ;


 TYPE_2__* container ;

__attribute__((used)) static void async_cb(uv_async_t* handle) {
  container->async_events++;
  handle->data = handle;
}
