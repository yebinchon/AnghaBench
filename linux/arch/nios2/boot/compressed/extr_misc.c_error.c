
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int puts (char*) ;

__attribute__((used)) static void error(char *x)
{
 puts("\nERROR\n");
 puts(x);
 puts("\n\n -- System halted");

 while (1)
  ;
}
