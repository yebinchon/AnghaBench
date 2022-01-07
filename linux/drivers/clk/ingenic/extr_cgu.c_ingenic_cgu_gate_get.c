
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_cgu_gate_info {int clear_to_gate; int bit; scalar_t__ reg; } ;
struct ingenic_cgu {scalar_t__ base; } ;


 int BIT (int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline bool
ingenic_cgu_gate_get(struct ingenic_cgu *cgu,
       const struct ingenic_cgu_gate_info *info)
{
 return !!(readl(cgu->base + info->reg) & BIT(info->bit))
  ^ info->clear_to_gate;
}
