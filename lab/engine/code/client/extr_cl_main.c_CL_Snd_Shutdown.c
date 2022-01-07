
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int soundStarted; } ;


 int S_Shutdown () ;
 TYPE_1__ cls ;
 int qfalse ;

void CL_Snd_Shutdown(void)
{
 S_Shutdown();
 cls.soundStarted = qfalse;
}
