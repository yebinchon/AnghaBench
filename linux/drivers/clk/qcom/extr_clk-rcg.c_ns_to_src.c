
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct src_sel {int src_sel_shift; } ;


 int SRC_SEL_MASK ;

__attribute__((used)) static u32 ns_to_src(struct src_sel *s, u32 ns)
{
 ns >>= s->src_sel_shift;
 ns &= SRC_SEL_MASK;
 return ns;
}
