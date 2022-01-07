
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int static_branch_inc (int *) ;
 int trace_pagefault_key ;

int trace_pagefault_reg(void)
{
 static_branch_inc(&trace_pagefault_key);
 return 0;
}
