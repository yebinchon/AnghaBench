
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_page (void*) ;

void __cpu_clear_user_page(void *kaddr, unsigned long vaddr)
{
 clear_page(kaddr);
}
