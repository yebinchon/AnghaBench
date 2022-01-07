
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long pc; } ;


 int kgdb_hex2long (char**,unsigned long*) ;

int kgdb_arch_handle_exception(int vector, int signo, int err_code,
          char *remcom_in_buffer, char *remcom_out_buffer,
          struct pt_regs *regs)
{
 char *ptr;
 unsigned long address;

 switch (remcom_in_buffer[0]) {
 case 'c':

  ptr = &remcom_in_buffer[1];
  if (kgdb_hex2long(&ptr, &address))
   regs->pc = address;

  return 0;
 }
 return -1;
}
