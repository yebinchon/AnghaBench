
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ integer; } ;


 int CON_Hide () ;
 int CON_Show () ;
 int Sys_AnsiColorPrint (char const*) ;
 TYPE_1__* com_ansiColor ;
 int fputs (char const*,int ) ;
 int stderr ;
 int strlen (char const*) ;
 int ttycon_on ;
 scalar_t__ ttycon_show_overdue ;

void CON_Print( const char *msg )
{
 if (!msg[0])
  return;

 CON_Hide( );

 if( com_ansiColor && com_ansiColor->integer )
  Sys_AnsiColorPrint( msg );
 else
  fputs( msg, stderr );

 if (!ttycon_on) {

  return;
 }



 if (msg[strlen(msg) - 1] == '\n') {
  CON_Show();


  while (ttycon_show_overdue > 0) {
   CON_Show();
   ttycon_show_overdue--;
  }
 }
 else
 {

  ttycon_show_overdue++;
 }
}
