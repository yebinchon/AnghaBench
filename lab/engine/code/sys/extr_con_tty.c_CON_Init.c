
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int* c_cc; int c_lflag; int c_iflag; } ;


 int CON_Show () ;
 int CON_SigCont ;
 int Com_Printf (char*) ;
 int ECHO ;
 int F_GETFL ;
 int F_SETFL ;
 int Field_Clear (int *) ;
 int ICANON ;
 int INPCK ;
 int ISTRIP ;
 int O_NONBLOCK ;
 int SIGCONT ;
 int SIGTTIN ;
 int SIGTTOU ;
 int SIG_IGN ;
 int STDIN_FILENO ;
 int TCSADRAIN ;
 int TTY_con ;
 int TTY_eof ;
 int TTY_erase ;
 struct termios TTY_tc ;
 size_t VEOF ;
 size_t VERASE ;
 size_t VMIN ;
 size_t VTIME ;
 int fcntl (int ,int ,int) ;
 void* qfalse ;
 void* qtrue ;
 int signal (int ,int ) ;
 int stdinIsATTY ;
 void* stdin_active ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 int ttycon_hide ;
 void* ttycon_on ;

void CON_Init( void )
{
 struct termios tc;



 signal(SIGTTIN, SIG_IGN);
 signal(SIGTTOU, SIG_IGN);


 signal(SIGCONT, CON_SigCont);


 fcntl(STDIN_FILENO, F_SETFL, fcntl(STDIN_FILENO, F_GETFL, 0) | O_NONBLOCK );

 if (!stdinIsATTY)
 {
  Com_Printf("tty console mode disabled\n");
  ttycon_on = qfalse;
  stdin_active = qtrue;
  return;
 }

 Field_Clear(&TTY_con);
 tcgetattr (STDIN_FILENO, &TTY_tc);
 TTY_erase = TTY_tc.c_cc[VERASE];
 TTY_eof = TTY_tc.c_cc[VEOF];
 tc = TTY_tc;
 tc.c_lflag &= ~(ECHO | ICANON);





 tc.c_iflag &= ~(ISTRIP | INPCK);
 tc.c_cc[VMIN] = 1;
 tc.c_cc[VTIME] = 0;
 tcsetattr (STDIN_FILENO, TCSADRAIN, &tc);
 ttycon_on = qtrue;
 ttycon_hide = 1;
 CON_Show();
}
