
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int static_branch_dec (int *) ;
 int trace_pagefault_key ;

void trace_pagefault_unreg(void)
{
 static_branch_dec(&trace_pagefault_key);
}
