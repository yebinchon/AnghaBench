
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_log_source_str (int) ;
 int getmaxx (int ) ;
 int stdscr ;

__attribute__((used)) static char *
get_str_logfile (void)
{
  int col = getmaxx (stdscr), left_padding = 20;
  return get_log_source_str (col - left_padding);
}
