
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int bridge_base ;
 int iowrite32 (int ,unsigned int) ;

__attribute__((used)) static inline void bridge_w32(u32 val, unsigned reg)
{
 iowrite32(val, bridge_base + reg);
}
