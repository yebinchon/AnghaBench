
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ uv_timer_t ;
typedef int uv_handle_t ;
struct TYPE_5__ {int events; int poll_handle; int delayed_events; } ;
typedef TYPE_2__ connection_context_t ;


 int ASSERT (int) ;
 int connection_poll_cb ;
 scalar_t__ uv_is_active (int *) ;
 int uv_poll_start (int *,int ,int ) ;

__attribute__((used)) static void delay_timer_cb(uv_timer_t* timer) {
  connection_context_t* context = (connection_context_t*) timer->data;
  int r;


  ASSERT(0 == uv_is_active((uv_handle_t*) timer));


  ASSERT(context->delayed_events != 0);
  context->events |= context->delayed_events;
  context->delayed_events = 0;

  r = uv_poll_start(&context->poll_handle,
                    context->events,
                    connection_poll_cb);
  ASSERT(r == 0);
}
