
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct line* driver_data; } ;
struct tty_driver {int dummy; } ;
struct line {int dummy; } ;


 int tty_standard_install (struct tty_driver*,struct tty_struct*) ;

int line_install(struct tty_driver *driver, struct tty_struct *tty,
   struct line *line)
{
 int ret;

 ret = tty_standard_install(driver, tty);
 if (ret)
  return ret;

 tty->driver_data = line;

 return 0;
}
