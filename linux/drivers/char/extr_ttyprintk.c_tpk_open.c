
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* driver_data; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int port; } ;


 TYPE_1__ tpk_port ;
 int tty_port_open (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static int tpk_open(struct tty_struct *tty, struct file *filp)
{
 tty->driver_data = &tpk_port;

 return tty_port_open(&tpk_port.port, tty, filp);
}
