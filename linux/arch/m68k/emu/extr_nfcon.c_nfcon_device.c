
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int dummy; } ;
struct console {int flags; } ;


 int CON_ENABLED ;
 struct tty_driver* nfcon_tty_driver ;

__attribute__((used)) static struct tty_driver *nfcon_device(struct console *con, int *index)
{
 *index = 0;
 return (con->flags & CON_ENABLED) ? nfcon_tty_driver : ((void*)0);
}
