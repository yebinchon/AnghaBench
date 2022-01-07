
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyprintk_port {int port; int port_write_mutex; } ;
struct tty_struct {struct ttyprintk_port* driver_data; } ;
struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tpk_printk (int *,int ) ;
 int tty_port_close (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static void tpk_close(struct tty_struct *tty, struct file *filp)
{
 struct ttyprintk_port *tpkp = tty->driver_data;

 mutex_lock(&tpkp->port_write_mutex);

 tpk_printk(((void*)0), 0);
 mutex_unlock(&tpkp->port_write_mutex);

 tty_port_close(&tpkp->port, tty, filp);
}
