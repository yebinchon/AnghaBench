
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* ssize_t ;
struct TYPE_3__ {void* _capacity; void* _cur; int _cond; int _mutex; } ;
typedef TYPE_1__ h2o_sem_t ;


 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;

void h2o_sem_init(h2o_sem_t *sem, ssize_t capacity)
{
    pthread_mutex_init(&sem->_mutex, ((void*)0));
    pthread_cond_init(&sem->_cond, ((void*)0));
    sem->_cur = capacity;
    sem->_capacity = capacity;
}
