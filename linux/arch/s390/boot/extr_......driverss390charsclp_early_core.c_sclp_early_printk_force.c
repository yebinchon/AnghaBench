
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sclp_early_printk (char const*,int ,int) ;
 int strlen (char const*) ;

void sclp_early_printk_force(const char *str)
{
 __sclp_early_printk(str, strlen(str), 1);
}
