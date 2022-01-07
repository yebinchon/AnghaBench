
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_handle_t ;
struct TYPE_3__ {int timer_handle; int poll_handle; } ;
typedef TYPE_1__ connection_context_t ;


 int connection_close_cb ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void destroy_connection_context(connection_context_t* context) {
  uv_close((uv_handle_t*) &context->poll_handle, connection_close_cb);
  uv_close((uv_handle_t*) &context->timer_handle, connection_close_cb);
}
