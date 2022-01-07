
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PFN_DOWN (unsigned long) ;
 unsigned long pfn_to_block_id (int ) ;

__attribute__((used)) static inline unsigned long phys_to_block_id(unsigned long phys)
{
 return pfn_to_block_id(PFN_DOWN(phys));
}
