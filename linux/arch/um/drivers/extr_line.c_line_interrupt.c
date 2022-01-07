
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int dummy; } ;
struct chan {struct line* line; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int chan_interrupt (struct line*,int) ;

__attribute__((used)) static irqreturn_t line_interrupt(int irq, void *data)
{
 struct chan *chan = data;
 struct line *line = chan->line;

 if (line)
  chan_interrupt(line, irq);

 return IRQ_HANDLED;
}
