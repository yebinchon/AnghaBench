
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCSADRAIN ;
 int fileno (int ) ;
 int havemodes ;
 int savemodes ;
 int stdin ;
 int tcsetattr (int ,int ,int *) ;

int tty_fix()
{
  if (!havemodes) return 0;

  return tcsetattr (fileno (stdin), TCSADRAIN, &savemodes);
}
