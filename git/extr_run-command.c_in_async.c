
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int main_thread ;
 int main_thread_set ;
 int pthread_equal (int ,int ) ;
 int pthread_self () ;

int in_async(void)
{
 if (!main_thread_set)
  return 0;
 return !pthread_equal(main_thread, pthread_self());
}
