
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmm_kick_thread () ;
 scalar_t__ cmm_suspended ;

__attribute__((used)) static int cmm_resume(void)
{
 cmm_suspended = 0;
 cmm_kick_thread();
 return 0;
}
