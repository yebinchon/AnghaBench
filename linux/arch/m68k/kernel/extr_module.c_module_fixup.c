
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct module {int dummy; } ;
struct m68k_fixup_info {int type; scalar_t__ addr; } ;




 int m68k_memoffset ;
 int m68k_virt_to_node_shift ;

void module_fixup(struct module *mod, struct m68k_fixup_info *start,
    struct m68k_fixup_info *end)
{
}
