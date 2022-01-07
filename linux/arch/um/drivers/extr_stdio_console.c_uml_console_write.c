
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int lock; int chan_out; } ;
struct console {size_t index; } ;


 int console_write_chan (int ,char const*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct line* vts ;

__attribute__((used)) static void uml_console_write(struct console *console, const char *string,
         unsigned len)
{
 struct line *line = &vts[console->index];
 unsigned long flags;

 spin_lock_irqsave(&line->lock, flags);
 console_write_chan(line->chan_out, string, len);
 spin_unlock_irqrestore(&line->lock, flags);
}
