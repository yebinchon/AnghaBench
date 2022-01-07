
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int strcmp (char const*,char*) ;

int is_terminal_dumb(void)
{
 const char *terminal = getenv("TERM");
 return !terminal || !strcmp(terminal, "dumb");
}
