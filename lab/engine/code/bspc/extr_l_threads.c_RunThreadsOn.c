
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qboolean ;


 int I_FloatTime () ;
 int Log_Print (char*) ;
 scalar_t__ dispatch ;
 int oldf ;
 scalar_t__ pacifier ;
 int printf (char*,int) ;
 int setbuf (int ,int *) ;
 int stdout ;
 int workcount ;

void RunThreadsOn(int workcnt, qboolean showpacifier, void(*func)(int))
{
 int start, end;

 Log_Print("no multi-threading\n");
 dispatch = 0;
 workcount = workcnt;
 oldf = -1;
 pacifier = showpacifier;
 start = I_FloatTime ();




 func(0);

 end = I_FloatTime ();
 if (pacifier)
  printf (" (%i)\n", end-start);
}
