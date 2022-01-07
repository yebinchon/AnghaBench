
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * balancer; } ;
typedef TYPE_1__ h2o_socketpool_t ;



__attribute__((used)) static inline int is_global_pool(h2o_socketpool_t *pool)
{
    return pool->balancer == ((void*)0);
}
