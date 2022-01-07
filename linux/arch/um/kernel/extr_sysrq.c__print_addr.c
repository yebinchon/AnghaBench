
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*,unsigned long,char*,void*) ;

__attribute__((used)) static void _print_addr(void *data, unsigned long address, int reliable)
{
 pr_info(" [<%08lx>] %s%pS\n", address, reliable ? "" : "? ",
  (void *)address);
}
