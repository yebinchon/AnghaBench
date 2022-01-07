
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ws_col; int ws_row; } ;
struct tty_struct {TYPE_1__ winsize; struct line* driver_data; } ;
struct tty_port {int dummy; } ;
struct line {int sigio; int chan_out; } ;


 int chan_enable_winch (int ,struct tty_port*) ;
 int chan_window_size (struct line*,int *,int *) ;
 int enable_chan (struct line*) ;

__attribute__((used)) static int line_activate(struct tty_port *port, struct tty_struct *tty)
{
 int ret;
 struct line *line = tty->driver_data;

 ret = enable_chan(line);
 if (ret)
  return ret;

 if (!line->sigio) {
  chan_enable_winch(line->chan_out, port);
  line->sigio = 1;
 }

 chan_window_size(line, &tty->winsize.ws_row,
  &tty->winsize.ws_col);

 return 0;
}
