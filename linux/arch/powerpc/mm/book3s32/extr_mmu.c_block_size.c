
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_PPC_BOOK3S_601 ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned int SZ_256M ;
 unsigned int SZ_8M ;
 int ffs (unsigned long) ;
 int fls (unsigned long) ;
 unsigned int min3 (unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int block_size(unsigned long base, unsigned long top)
{
 unsigned int max_size = IS_ENABLED(CONFIG_PPC_BOOK3S_601) ? SZ_8M : SZ_256M;
 unsigned int base_shift = (ffs(base) - 1) & 31;
 unsigned int block_shift = (fls(top - base) - 1) & 31;

 return min3(max_size, 1U << base_shift, 1U << block_shift);
}
