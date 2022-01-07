
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_apb_timer {scalar_t__ base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void apbt_writel(struct dw_apb_timer *timer, u32 val,
   unsigned long offs)
{
 writel(val, timer->base + offs);
}
