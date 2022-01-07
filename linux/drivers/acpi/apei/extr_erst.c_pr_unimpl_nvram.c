
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_warn (char*) ;
 scalar_t__ printk_ratelimit () ;

__attribute__((used)) static void pr_unimpl_nvram(void)
{
 if (printk_ratelimit())
  pr_warn("NVRAM ERST Log Address Range not implemented yet.\n");
}
