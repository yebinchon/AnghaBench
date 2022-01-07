
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;



int kgdb_arch_handle_exception(int vector, int signo, int err_code,
          char *remcom_in_buffer, char *remcom_out_buffer,
          struct pt_regs *linux_regs)
{
 switch (remcom_in_buffer[0]) {
 case 's':
 case 'c':
  return 0;
 }

 return -1;
}
