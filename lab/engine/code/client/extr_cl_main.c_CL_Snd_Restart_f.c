
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CL_Snd_Shutdown () ;
 int CL_Vid_Restart_f () ;

void CL_Snd_Restart_f(void)
{
 CL_Snd_Shutdown();

 CL_Vid_Restart_f();
}
