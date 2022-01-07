
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aout_thread_n (void*) ;

__attribute__((used)) static int aout_thread(void *arg)
{
    return aout_thread_n(arg);
}
