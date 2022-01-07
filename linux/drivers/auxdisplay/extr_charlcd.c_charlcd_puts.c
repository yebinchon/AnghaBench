
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charlcd {int dummy; } ;


 int charlcd_write_char (struct charlcd*,char const) ;
 int in_interrupt () ;
 int schedule () ;
 int strlen (char const*) ;

__attribute__((used)) static void charlcd_puts(struct charlcd *lcd, const char *s)
{
 const char *tmp = s;
 int count = strlen(s);

 for (; count-- > 0; tmp++) {
  if (!in_interrupt() && (((count + 1) & 0x1f) == 0))




   schedule();

  charlcd_write_char(lcd, *tmp);
 }
}
