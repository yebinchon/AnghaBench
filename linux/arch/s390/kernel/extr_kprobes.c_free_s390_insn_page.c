
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int insn_page_in_use ;
 int set_memory_nx (unsigned long,int) ;
 int xchg (int *,int ) ;

__attribute__((used)) static void free_s390_insn_page(void *page)
{
 set_memory_nx((unsigned long) page, 1);
 xchg(&insn_page_in_use, 0);
}
