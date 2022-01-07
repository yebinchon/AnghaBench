
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int ata_midi_out (char) ;

__attribute__((used)) static void atari_midi_console_write(struct console *co, const char *str,
         unsigned int count)
{
 while (count--) {
  if (*str == '\n')
   ata_midi_out('\r');
  ata_midi_out(*str++);
 }
}
