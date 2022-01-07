
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pthread_self () ;

__attribute__((used)) static unsigned long thread_id_callback(void)
{
    return (unsigned long)pthread_self();
}
