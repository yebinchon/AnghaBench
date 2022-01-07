
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_stricmp (char const*,int ) ;
 int myargc ;
 int * myargv ;

int CheckParm (const char *check)
{
 int i;

 for (i = 1;i<myargc;i++)
 {
  if ( !Q_stricmp(check, myargv[i]) )
   return i;
 }

 return 0;
}
