
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct round_robin_t {int mutex; } ;
typedef int h2o_balancer_t ;


 int free (struct round_robin_t*) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void destroy(h2o_balancer_t *balancer)
{
    struct round_robin_t *self = (void *)balancer;
    pthread_mutex_destroy(&self->mutex);
    free(self);
}
