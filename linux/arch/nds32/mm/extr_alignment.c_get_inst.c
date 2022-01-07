
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned long be32_to_cpu (int ) ;
 int get_unaligned (int *) ;

__attribute__((used)) static inline unsigned long get_inst(unsigned long addr)
{
 return be32_to_cpu(get_unaligned((u32 *) addr));
}
