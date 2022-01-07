
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct src_sel {int src_sel_shift; } ;


 int SRC_SEL_MASK ;

__attribute__((used)) static u32 src_to_ns(struct src_sel *s, u8 src, u32 ns)
{
 u32 mask;

 mask = SRC_SEL_MASK;
 mask <<= s->src_sel_shift;
 ns &= ~mask;

 ns |= src << s->src_sel_shift;
 return ns;
}
