
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p; int type; } ;
struct idt_data {unsigned int vector; TYPE_1__ bits; int segment; void const* addr; } ;
typedef int data ;


 int BUG_ON (int) ;
 int GATE_INTERRUPT ;
 int __KERNEL_CS ;
 int idt_setup_from_table (int ,struct idt_data*,int,int) ;
 int idt_table ;
 int memset (struct idt_data*,int ,int) ;

__attribute__((used)) static void set_intr_gate(unsigned int n, const void *addr)
{
 struct idt_data data;

 BUG_ON(n > 0xFF);

 memset(&data, 0, sizeof(data));
 data.vector = n;
 data.addr = addr;
 data.segment = __KERNEL_CS;
 data.bits.type = GATE_INTERRUPT;
 data.bits.p = 1;

 idt_setup_from_table(idt_table, &data, 1, 0);
}
