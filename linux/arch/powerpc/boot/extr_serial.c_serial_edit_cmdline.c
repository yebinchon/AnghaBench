
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial_console_data {char (* getc ) () ;int (* putc ) (char) ;scalar_t__ (* tstc ) () ;} ;
struct TYPE_2__ {struct serial_console_data* data; } ;


 TYPE_1__ console_ops ;
 int printf (char*) ;
 int strlen (char*) ;
 scalar_t__ stub1 () ;
 char stub2 () ;
 int stub3 (char) ;
 int udelay (int) ;

__attribute__((used)) static void serial_edit_cmdline(char *buf, int len, unsigned int timeout)
{
 int timer = 0, count;
 char ch, *cp;
 struct serial_console_data *scdp = console_ops.data;

 cp = buf;
 count = strlen(buf);
 cp = &buf[count];
 count++;

 do {
  if (scdp->tstc()) {
   while (((ch = scdp->getc()) != '\n') && (ch != '\r')) {

    if ((ch == '\b') || (ch == '\177')) {
     if (cp != buf) {
      cp--;
      count--;
      printf("\b \b");
     }

    } else if ((ch == '\030') || (ch == '\025')) {
     while (cp != buf) {
      cp--;
      count--;
      printf("\b \b");
     }
    } else if (count < len) {
      *cp++ = ch;
      count++;
      scdp->putc(ch);
    }
   }
   break;
  }
  udelay(1000);
 } while (timer++ < timeout);
 *cp = 0;
}
