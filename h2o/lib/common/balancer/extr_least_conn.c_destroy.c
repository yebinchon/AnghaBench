
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct least_conn_t {int mutex; } ;
typedef int h2o_balancer_t ;


 int free (struct least_conn_t*) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void destroy(h2o_balancer_t *_self)
{
    struct least_conn_t *self = (void *)_self;
    pthread_mutex_destroy(&self->mutex);
    free(self);
}
