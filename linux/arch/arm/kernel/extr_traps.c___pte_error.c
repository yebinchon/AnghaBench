
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int pr_err (char*,char const*,int,long long) ;
 scalar_t__ pte_val (int ) ;

void __pte_error(const char *file, int line, pte_t pte)
{
 pr_err("%s:%d: bad pte %08llx.\n", file, line, (long long)pte_val(pte));
}
