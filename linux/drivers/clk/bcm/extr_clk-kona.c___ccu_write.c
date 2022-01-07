
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ccu_data {scalar_t__ base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
__ccu_write(struct ccu_data *ccu, u32 reg_offset, u32 reg_val)
{
 writel(reg_val, ccu->base + reg_offset);
}
