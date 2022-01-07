
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int* c_cc; int c_lflag; } ;


 int ICANON ;
 int TCSANOW ;
 size_t VMIN ;
 size_t VTIME ;
 int fileno (int ) ;
 int havemodes ;
 struct termios savemodes ;
 int stdin ;
 scalar_t__ tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;

int tty_break()
{
  struct termios modmodes;

  if (tcgetattr (fileno (stdin), &savemodes) < 0) return -1;

  havemodes = 1;

  modmodes = savemodes;
  modmodes.c_lflag &= ~ICANON;
  modmodes.c_cc[VMIN] = 1;
  modmodes.c_cc[VTIME] = 0;

  return tcsetattr (fileno (stdin), TCSANOW, &modmodes);
}
