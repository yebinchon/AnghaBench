
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_ALIGNED (unsigned long,int) ;
 int WARN_ON_ONCE (int) ;
 int memset_l (void*,unsigned long,unsigned long) ;

__attribute__((used)) static inline void zram_fill_page(void *ptr, unsigned long len,
     unsigned long value)
{
 WARN_ON_ONCE(!IS_ALIGNED(len, sizeof(unsigned long)));
 memset_l(ptr, value, len / sizeof(unsigned long));
}
