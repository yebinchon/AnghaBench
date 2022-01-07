
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmm_thread_wait ;
 int wake_up (int *) ;

__attribute__((used)) static void cmm_kick_thread(void)
{
 wake_up(&cmm_thread_wait);
}
