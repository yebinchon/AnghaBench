
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct line {struct chan* chan_out; struct chan* chan_in; } ;
struct chan {int data; int fd; TYPE_1__* ops; scalar_t__ primary; } ;
struct TYPE_2__ {int (* window_size ) (int ,int ,unsigned short*,unsigned short*) ;} ;


 int stub1 (int ,int ,unsigned short*,unsigned short*) ;
 int stub2 (int ,int ,unsigned short*,unsigned short*) ;

int chan_window_size(struct line *line, unsigned short *rows_out,
        unsigned short *cols_out)
{
 struct chan *chan;

 chan = line->chan_in;
 if (chan && chan->primary) {
  if (chan->ops->window_size == ((void*)0))
   return 0;
  return chan->ops->window_size(chan->fd, chan->data,
           rows_out, cols_out);
 }
 chan = line->chan_out;
 if (chan && chan->primary) {
  if (chan->ops->window_size == ((void*)0))
   return 0;
  return chan->ops->window_size(chan->fd, chan->data,
           rows_out, cols_out);
 }
 return 0;
}
