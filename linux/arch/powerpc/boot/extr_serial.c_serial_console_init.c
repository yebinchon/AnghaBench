
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int edit_cmdline; TYPE_1__* data; int close; int write; int open; } ;
struct TYPE_8__ {scalar_t__ getc; } ;


 TYPE_7__ console_ops ;
 int cpm_console_init (void*,TYPE_1__*) ;
 scalar_t__ dt_is_compatible (void*,char*) ;
 int mpc5200_psc_console_init (void*,TYPE_1__*) ;
 int ns16550_console_init (void*,TYPE_1__*) ;
 int opal_console_init (void*,TYPE_1__*) ;
 TYPE_1__ serial_cd ;
 int serial_close ;
 int serial_edit_cmdline ;
 void* serial_get_stdout_devp () ;
 int serial_open ;
 int serial_write ;
 int uartlite_console_init (void*,TYPE_1__*) ;

int serial_console_init(void)
{
 void *devp;
 int rc = -1;

 devp = serial_get_stdout_devp();
 if (devp == ((void*)0))
  goto err_out;

 if (dt_is_compatible(devp, "ns16550") ||
     dt_is_compatible(devp, "pnpPNP,501"))
  rc = ns16550_console_init(devp, &serial_cd);
 if (!rc) {
  console_ops.open = serial_open;
  console_ops.write = serial_write;
  console_ops.close = serial_close;
  console_ops.data = &serial_cd;

  if (serial_cd.getc)
   console_ops.edit_cmdline = serial_edit_cmdline;

  return 0;
 }
err_out:
 return -1;
}
