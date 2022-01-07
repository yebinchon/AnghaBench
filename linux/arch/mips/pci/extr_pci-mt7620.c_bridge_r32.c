
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int bridge_base ;
 int ioread32 (unsigned int) ;

__attribute__((used)) static inline u32 bridge_r32(unsigned reg)
{
 return ioread32(bridge_base + reg);
}
