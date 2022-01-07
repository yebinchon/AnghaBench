
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef void* u16 ;
struct idt_data {int bits; scalar_t__ segment; scalar_t__ addr; } ;
struct TYPE_3__ {scalar_t__ reserved; scalar_t__ offset_high; void* offset_middle; int bits; void* segment; void* offset_low; } ;
typedef TYPE_1__ gate_desc ;



__attribute__((used)) static inline void idt_init_desc(gate_desc *gate, const struct idt_data *d)
{
 unsigned long addr = (unsigned long) d->addr;

 gate->offset_low = (u16) addr;
 gate->segment = (u16) d->segment;
 gate->bits = d->bits;
 gate->offset_middle = (u16) (addr >> 16);




}
