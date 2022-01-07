
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PAGE_OFFSET ;
 scalar_t__ arch_kasan_reset_tag (unsigned long) ;

__attribute__((used)) static inline bool is_ttbr1_addr(unsigned long addr)
{

 return arch_kasan_reset_tag(addr) >= PAGE_OFFSET;
}
