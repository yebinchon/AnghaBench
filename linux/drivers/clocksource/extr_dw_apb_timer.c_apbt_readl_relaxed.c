
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_apb_timer {scalar_t__ base; } ;


 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 apbt_readl_relaxed(struct dw_apb_timer *timer, unsigned long offs)
{
 return readl_relaxed(timer->base + offs);
}
