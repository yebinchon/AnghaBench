
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {size_t index; } ;
struct tty_driver {int dummy; } ;


 int line_install (struct tty_driver*,struct tty_struct*,int *) ;
 int * vts ;

__attribute__((used)) static int con_install(struct tty_driver *driver, struct tty_struct *tty)
{
 return line_install(driver, tty, &vts[tty->index]);
}
