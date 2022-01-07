
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_attr_t ;
typedef int buf ;


 int h2o_fatal (char*,int ) ;
 int h2o_strerror_r (int,char*,int) ;
 int pthread_create (int *,int const*,void* (*) (void*),void*) ;

void h2o_multithread_create_thread(pthread_t *tid, const pthread_attr_t *attr, void *(*func)(void *), void *arg)
{
    int ret;
    if ((ret = pthread_create(tid, attr, func, arg)) != 0) {
        char buf[128];
        h2o_fatal("pthread_create: %s", h2o_strerror_r(ret, buf, sizeof(buf)));
    }
}
