
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ _cur; scalar_t__ _capacity; int _mutex; int _cond; } ;
typedef TYPE_1__ h2o_sem_t ;


 int assert (int) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;

void h2o_sem_destroy(h2o_sem_t *sem)
{
    assert(sem->_cur == sem->_capacity);
    pthread_cond_destroy(&sem->_cond);
    pthread_mutex_destroy(&sem->_mutex);
}
