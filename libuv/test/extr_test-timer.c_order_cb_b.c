
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ uv_timer_t ;


 int ASSERT (int) ;
 int order_cb_called ;

__attribute__((used)) static void order_cb_b(uv_timer_t *handle) {
  ASSERT(order_cb_called++ == *(int*)handle->data);
}
