
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ timeout; } ;
typedef TYPE_1__ h2o_socketpool_t ;



int h2o_socketpool_can_keepalive(h2o_socketpool_t *pool)
{
    return pool->timeout > 0;
}
