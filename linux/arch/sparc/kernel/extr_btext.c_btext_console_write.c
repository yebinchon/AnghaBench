
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int btext_drawtext (char const*,unsigned int) ;

__attribute__((used)) static void btext_console_write(struct console *con, const char *s,
    unsigned int n)
{
 btext_drawtext(s, n);
}
