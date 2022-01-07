
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_socketpool_target_t ;
typedef int h2o_socketpool_t ;
typedef int h2o_balancer_t ;


 int common_init (int *,int **,size_t,size_t,int *) ;
 int * h2o_balancer_create_rr () ;

void h2o_socketpool_init_specific(h2o_socketpool_t *pool, size_t capacity, h2o_socketpool_target_t **targets, size_t num_targets,
                                  h2o_balancer_t *balancer)
{
    if (balancer == ((void*)0))
        balancer = h2o_balancer_create_rr();
    common_init(pool, targets, num_targets, capacity, balancer);
}
