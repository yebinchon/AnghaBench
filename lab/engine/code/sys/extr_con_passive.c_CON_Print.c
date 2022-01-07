
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ integer; } ;
struct TYPE_3__ {scalar_t__ integer; } ;


 int Sys_AnsiColorPrint (char const*) ;
 TYPE_2__* com_ansiColor ;
 TYPE_1__* com_logToStdErr ;
 int fputs (char const*,int ) ;
 int stderr ;

void CON_Print( const char *msg )
{
 if (com_logToStdErr && com_logToStdErr->integer ) {
  if( com_ansiColor && com_ansiColor->integer ) {
   Sys_AnsiColorPrint( msg );
  } else {
   fputs( msg, stderr );
  }
 }
}
