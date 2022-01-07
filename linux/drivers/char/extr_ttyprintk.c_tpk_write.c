
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyprintk_port {int port_write_mutex; } ;
struct tty_struct {struct ttyprintk_port* driver_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tpk_printk (unsigned char const*,int) ;

__attribute__((used)) static int tpk_write(struct tty_struct *tty,
  const unsigned char *buf, int count)
{
 struct ttyprintk_port *tpkp = tty->driver_data;
 int ret;



 mutex_lock(&tpkp->port_write_mutex);
 ret = tpk_printk(buf, count);
 mutex_unlock(&tpkp->port_write_mutex);

 return ret;
}
