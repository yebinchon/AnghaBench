
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ThreadLock () ;
 int ThreadUnlock () ;
 int dispatch ;
 int oldf ;
 scalar_t__ pacifier ;
 int printf (char*,int) ;
 int workcount ;

int GetThreadWork(void)
{
 int r;
 int f;

 ThreadLock();

 if (dispatch == workcount)
 {
  ThreadUnlock ();
  return -1;
 }

 f = 10*dispatch / workcount;
 if (f != oldf)
 {
  oldf = f;
  if (pacifier)
   printf ("%i...", f);
 }

 r = dispatch;
 dispatch++;
 ThreadUnlock ();

 return r;
}
