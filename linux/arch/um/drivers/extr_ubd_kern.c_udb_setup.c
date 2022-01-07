
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,char*) ;

__attribute__((used)) static int udb_setup(char *str)
{
 printk("udb%s specified on command line is almost certainly a ubd -> "
        "udb TYPO\n", str);
 return 1;
}
