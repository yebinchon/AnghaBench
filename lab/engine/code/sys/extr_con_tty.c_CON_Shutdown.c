
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CON_Hide () ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int STDIN_FILENO ;
 int TCSADRAIN ;
 int TTY_tc ;
 int fcntl (int ,int ,int) ;
 int tcsetattr (int ,int ,int *) ;
 scalar_t__ ttycon_on ;

void CON_Shutdown( void )
{
 if (ttycon_on)
 {
  CON_Hide();
  tcsetattr (STDIN_FILENO, TCSADRAIN, &TTY_tc);
 }


 fcntl(STDIN_FILENO, F_SETFL, fcntl(STDIN_FILENO, F_GETFL, 0) & ~O_NONBLOCK);
}
