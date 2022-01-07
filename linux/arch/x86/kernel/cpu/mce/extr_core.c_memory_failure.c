
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int MF_ACTION_REQUIRED ;
 int pr_err (char*,unsigned long) ;

int memory_failure(unsigned long pfn, int flags)
{

 BUG_ON(flags & MF_ACTION_REQUIRED);
 pr_err("Uncorrected memory error in page 0x%lx ignored\n"
        "Rebuild kernel with CONFIG_MEMORY_FAILURE=y for smarter handling\n",
        pfn);

 return 0;
}
