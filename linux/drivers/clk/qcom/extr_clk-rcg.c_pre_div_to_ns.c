
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pre_div {int pre_div_shift; int pre_div_width; } ;


 int BIT (int ) ;

__attribute__((used)) static u32 pre_div_to_ns(struct pre_div *p, u8 pre_div, u32 ns)
{
 u32 mask;

 mask = BIT(p->pre_div_width) - 1;
 mask <<= p->pre_div_shift;
 ns &= ~mask;

 ns |= pre_div << p->pre_div_shift;
 return ns;
}
