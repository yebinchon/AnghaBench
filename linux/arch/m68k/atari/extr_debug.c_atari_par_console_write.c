
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int ata_par_out (char) ;

__attribute__((used)) static void atari_par_console_write(struct console *co, const char *str,
        unsigned int count)
{
 static int printer_present = 1;

 if (!printer_present)
  return;

 while (count--) {
  if (*str == '\n') {
   if (!ata_par_out('\r')) {
    printer_present = 0;
    return;
   }
  }
  if (!ata_par_out(*str++)) {
   printer_present = 0;
   return;
  }
 }
}
