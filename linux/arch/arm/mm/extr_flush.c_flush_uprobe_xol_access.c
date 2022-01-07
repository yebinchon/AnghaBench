
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned int FLAG_PA_CORE_IN_MM ;
 unsigned int FLAG_PA_IS_EXEC ;
 int __flush_ptrace_access (struct page*,unsigned long,void*,unsigned long,unsigned int) ;

void flush_uprobe_xol_access(struct page *page, unsigned long uaddr,
        void *kaddr, unsigned long len)
{
 unsigned int flags = FLAG_PA_CORE_IN_MM|FLAG_PA_IS_EXEC;

 __flush_ptrace_access(page, uaddr, kaddr, len, flags);
}
