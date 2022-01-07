
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 scalar_t__ pgd_val (int ) ;
 int pr_err (char*,char const*,int,long long) ;

void __pgd_error(const char *file, int line, pgd_t pgd)
{
 pr_err("%s:%d: bad pgd %08llx.\n", file, line, (long long)pgd_val(pgd));
}
