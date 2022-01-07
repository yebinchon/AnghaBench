
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct line* driver_data; } ;
struct tty_port {int dummy; } ;
struct line {scalar_t__ sigio; } ;


 struct tty_struct* tty_port_tty_get (struct tty_port*) ;
 int unregister_winch (struct tty_struct*) ;

__attribute__((used)) static void line_destruct(struct tty_port *port)
{
 struct tty_struct *tty = tty_port_tty_get(port);
 struct line *line = tty->driver_data;

 if (line->sigio) {
  unregister_winch(tty);
  line->sigio = 0;
 }
}
