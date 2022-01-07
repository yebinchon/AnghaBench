
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct line* driver_data; } ;
struct line {int port; } ;


 int tty_port_hangup (int *) ;

void line_hangup(struct tty_struct *tty)
{
 struct line *line = tty->driver_data;

 tty_port_hangup(&line->port);
}
