
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_driver {int dummy; } ;
struct console {int index; } ;
struct TYPE_2__ {struct tty_driver* driver; } ;


 TYPE_1__ driver ;

__attribute__((used)) static struct tty_driver *ssl_console_device(struct console *c, int *index)
{
 *index = c->index;
 return driver.driver;
}
