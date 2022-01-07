
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int early_write (char const*,unsigned int) ;

__attribute__((used)) static void early_console_write(struct console *con, const char *s, unsigned n)
{
 early_write(s, n);
}
