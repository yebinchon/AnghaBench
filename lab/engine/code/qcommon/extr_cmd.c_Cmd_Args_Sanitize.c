
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_CVAR_VALUE_STRING ;
 int cmd_argc ;
 char** cmd_argv ;
 int strlen (char*) ;
 char* strpbrk (char*,char*) ;

void Cmd_Args_Sanitize(void)
{
 int i;

 for(i = 1; i < cmd_argc; i++)
 {
  char *c = cmd_argv[i];

  if(strlen(c) > MAX_CVAR_VALUE_STRING - 1)
   c[MAX_CVAR_VALUE_STRING - 1] = '\0';

  while ((c = strpbrk(c, "\n\r;"))) {
   *c = ' ';
   ++c;
  }
 }
}
