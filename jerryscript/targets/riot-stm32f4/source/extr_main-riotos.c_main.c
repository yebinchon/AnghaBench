
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* RIOT_BOARD ;
 char* RIOT_MCU ;
 int SHELL_DEFAULT_BUFSIZE ;
 scalar_t__ jerry_port_get_current_time () ;
 int printf (char*,char*) ;
 int shell_commands ;
 int shell_run (int ,char*,int) ;
 int srand (unsigned int) ;

int main (void)
{
  srand ((unsigned) jerry_port_get_current_time ());
  printf ("You are running RIOT on a(n) %s board.\n", RIOT_BOARD);
  printf ("This board features a(n) %s MCU.\n", RIOT_MCU);


  char line_buf[SHELL_DEFAULT_BUFSIZE];
  shell_run (shell_commands, line_buf, SHELL_DEFAULT_BUFSIZE);

  return 0;
}
