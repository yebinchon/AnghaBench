
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trap_info {scalar_t__ address; } ;
struct desc_ptr {int size; scalar_t__ address; } ;
typedef int gate_desc ;


 int BUG_ON (int) ;
 scalar_t__ cvt_gate_to_trap (unsigned int,int *,struct trap_info*) ;

__attribute__((used)) static void xen_convert_trap_info(const struct desc_ptr *desc,
      struct trap_info *traps)
{
 unsigned in, out, count;

 count = (desc->size+1) / sizeof(gate_desc);
 BUG_ON(count > 256);

 for (in = out = 0; in < count; in++) {
  gate_desc *entry = (gate_desc *)(desc->address) + in;

  if (cvt_gate_to_trap(in, entry, &traps[out]))
   out++;
 }
 traps[out].address = 0;
}
