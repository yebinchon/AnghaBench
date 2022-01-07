
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int integer; } ;


 TYPE_1__* com_logToStdErr ;
 int fflush (int ) ;
 int stdout ;

int Sys_ForceErrorOutput()
{
 int originalErrorOutput = 0;
 if ( com_logToStdErr ) {
  originalErrorOutput = com_logToStdErr->integer;
  com_logToStdErr->integer = 1;
  fflush (stdout);
 }
 return originalErrorOutput;
}
