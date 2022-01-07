
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timer_s {scalar_t__ tim_off; scalar_t__ base; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline u32 timer32_read(struct timer_s *t)
{
 return __raw_readl(t->base + t->tim_off);
}
