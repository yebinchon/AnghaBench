
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_err (char*,char const*,void*,int) ;

void __suspend_report_result(const char *function, void *fn, int ret)
{
 if (ret)
  pr_err("%s(): %pS returns %d\n", function, fn, ret);
}
