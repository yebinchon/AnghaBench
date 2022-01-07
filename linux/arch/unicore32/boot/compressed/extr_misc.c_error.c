
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_decomp_error (char*) ;
 int arch_decomp_puts (char*) ;

void error(char *x)
{
 arch_decomp_puts("\n\n");
 arch_decomp_puts(x);
 arch_decomp_puts("\n\n -- System halted");

 arch_decomp_error(x);

 for (;;)
  ;
}
