
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int dummy; } ;
struct console {size_t index; } ;


 int console_open_chan (struct line*,struct console*) ;
 struct line* serial_lines ;

__attribute__((used)) static int ssl_console_setup(struct console *co, char *options)
{
 struct line *line = &serial_lines[co->index];

 return console_open_chan(line, co);
}
