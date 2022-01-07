
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int __sclp_early_printk (char const*,unsigned int,int ) ;

__attribute__((used)) static void sclp_early_write(struct console *con, const char *s, unsigned int len)
{
 __sclp_early_printk(s, len, 0);
}
