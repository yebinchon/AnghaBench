
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 scalar_t__ pmd_val (int ) ;
 int pr_err (char*,char const*,int,long long) ;

void __pmd_error(const char *file, int line, pmd_t pmd)
{
 pr_err("%s:%d: bad pmd %08llx.\n", file, line, (long long)pmd_val(pmd));
}
