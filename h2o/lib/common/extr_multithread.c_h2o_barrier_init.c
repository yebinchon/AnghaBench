
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t _count; size_t _out_of_wait; int _cond; int _mutex; } ;
typedef TYPE_1__ h2o_barrier_t ;


 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;

void h2o_barrier_init(h2o_barrier_t *barrier, size_t count)
{
    pthread_mutex_init(&barrier->_mutex, ((void*)0));
    pthread_cond_init(&barrier->_cond, ((void*)0));
    barrier->_count = count;
    barrier->_out_of_wait = count;
}
