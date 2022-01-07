
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct line* driver_data; } ;
struct line {int port; } ;
struct file {int dummy; } ;


 int tty_port_close (int *,struct tty_struct*,struct file*) ;

void line_close(struct tty_struct *tty, struct file * filp)
{
 struct line *line = tty->driver_data;

 tty_port_close(&line->port, tty, filp);
}
