
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int cb; } ;
typedef TYPE_1__ h2o_timer_t ;
typedef int h2o_timer_cb ;
struct TYPE_7__ {int loop; } ;
typedef TYPE_2__ h2o_redis_client_t ;


 int h2o_timer_link (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void invoke_deferred(h2o_redis_client_t *client, uint64_t tick, h2o_timer_t *entry, h2o_timer_cb cb)
{
    entry->cb = cb;
    h2o_timer_link(client->loop, tick, entry);
}
