
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cursor; } ;


 int CON_Back () ;
 int TTY_CONSOLE_PROMPT ;
 TYPE_1__ TTY_con ;
 int strlen (int ) ;
 scalar_t__ ttycon_hide ;
 scalar_t__ ttycon_on ;

__attribute__((used)) static void CON_Hide( void )
{
 if( ttycon_on )
 {
  int i;
  if (ttycon_hide)
  {
   ttycon_hide++;
   return;
  }
  if (TTY_con.cursor>0)
  {
   for (i=0; i<TTY_con.cursor; i++)
   {
    CON_Back();
   }
  }

  for (i = strlen(TTY_CONSOLE_PROMPT); i > 0; i--) {
   CON_Back();
  }
  ttycon_hide++;
 }
}
