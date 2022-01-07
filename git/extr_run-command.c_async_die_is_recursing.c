
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int async_die_counter ;
 void* pthread_getspecific (int ) ;
 int pthread_setspecific (int ,void*) ;

__attribute__((used)) static int async_die_is_recursing(void)
{
 void *ret = pthread_getspecific(async_die_counter);
 pthread_setspecific(async_die_counter, (void *)1);
 return ret != ((void*)0);
}
