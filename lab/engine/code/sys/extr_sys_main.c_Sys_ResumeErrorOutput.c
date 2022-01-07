
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int integer; } ;


 TYPE_1__* com_logToStdErr ;

void Sys_ResumeErrorOutput( int originalErrorOutput )
{
 if ( com_logToStdErr ) {
  com_logToStdErr->integer = originalErrorOutput;
 }
}
