
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ _cur; int _mutex; int _cond; } ;
typedef TYPE_1__ h2o_sem_t ;


 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void h2o_sem_wait(h2o_sem_t *sem)
{
    pthread_mutex_lock(&sem->_mutex);
    while (sem->_cur <= 0)
        pthread_cond_wait(&sem->_cond, &sem->_mutex);
    --sem->_cur;
    pthread_mutex_unlock(&sem->_mutex);
}
