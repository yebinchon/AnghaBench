
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_socketpool_t ;


 int common_init (int *,int *,int ,size_t,int *) ;

void h2o_socketpool_init_global(h2o_socketpool_t *pool, size_t capacity)
{
    common_init(pool, ((void*)0), 0, capacity, ((void*)0));
}
