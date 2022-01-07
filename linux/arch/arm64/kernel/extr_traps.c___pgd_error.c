
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_err (char*,char const*,int,unsigned long) ;

void __pgd_error(const char *file, int line, unsigned long val)
{
 pr_err("%s:%d: bad pgd %016lx.\n", file, line, val);
}
