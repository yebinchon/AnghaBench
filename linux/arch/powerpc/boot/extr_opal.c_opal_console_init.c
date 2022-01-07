
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct serial_console_data {int close; int putc; int open; } ;


 scalar_t__ be32_to_cpu (scalar_t__) ;
 int getprop (void*,char*,scalar_t__*,int) ;
 int opal_con_close ;
 scalar_t__ opal_con_id ;
 int opal_con_open ;
 int opal_con_putc ;
 int opal_init () ;

int opal_console_init(void *devp, struct serial_console_data *scdp)
{
 opal_init();

 if (devp) {
  int n = getprop(devp, "reg", &opal_con_id, sizeof(u32));
  if (n != sizeof(u32))
   return -1;
  opal_con_id = be32_to_cpu(opal_con_id);
 } else
  opal_con_id = 0;

 scdp->open = opal_con_open;
 scdp->putc = opal_con_putc;
 scdp->close = opal_con_close;

 return 0;
}
