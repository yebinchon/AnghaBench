
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __be32 ;


 scalar_t__ be32_to_cpu (int ) ;

__attribute__((used)) static __inline__ u32
checksum_block(__be32 *m, int size)
{
 u32 sum = 0;

 while (size--)
  sum += be32_to_cpu(*m++);
 return sum;
}
