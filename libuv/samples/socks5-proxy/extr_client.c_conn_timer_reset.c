
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int idle_timeout; int timer_handle; } ;
typedef TYPE_1__ conn ;


 int CHECK (int) ;
 int conn_timer_expire ;
 scalar_t__ uv_timer_start (int *,int ,int ,int ) ;

__attribute__((used)) static void conn_timer_reset(conn *c) {
  CHECK(0 == uv_timer_start(&c->timer_handle,
                            conn_timer_expire,
                            c->idle_timeout,
                            0));
}
