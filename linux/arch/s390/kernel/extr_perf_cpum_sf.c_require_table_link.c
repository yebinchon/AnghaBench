
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CPUM_SF_SDBT_TL_OFFSET ;
 unsigned long PAGE_MASK ;

__attribute__((used)) static inline int require_table_link(const void *sdbt)
{
 return ((unsigned long) sdbt & ~PAGE_MASK) == CPUM_SF_SDBT_TL_OFFSET;
}
