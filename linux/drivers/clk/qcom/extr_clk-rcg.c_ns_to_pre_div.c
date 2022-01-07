
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pre_div {int pre_div_shift; int pre_div_width; } ;


 int BIT (int ) ;

__attribute__((used)) static u32 ns_to_pre_div(struct pre_div *p, u32 ns)
{
 ns >>= p->pre_div_shift;
 ns &= BIT(p->pre_div_width) - 1;
 return ns;
}
