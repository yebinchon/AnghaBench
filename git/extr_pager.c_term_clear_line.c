
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*,char*) ;
 int fputs (char*,int ) ;
 scalar_t__ is_terminal_dumb () ;
 int stderr ;
 char* term_columns () ;

void term_clear_line(void)
{
 if (is_terminal_dumb())





  fprintf(stderr, "\r%*s\r", term_columns(), "");
 else




  fputs("\r\033[K", stderr);
}
