
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_error (char*) ;
 int putstr (char*) ;

void error(char *x)
{
 arch_error(x);

 putstr("\n\n");
 putstr(x);
 putstr("\n\n -- System halted");

 while(1);
}
