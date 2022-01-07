
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idt_data {int vector; } ;
typedef int gate_desc ;


 int idt_init_desc (int *,struct idt_data const*) ;
 int set_bit (int ,int ) ;
 int system_vectors ;
 int write_idt_entry (int *,int ,int *) ;

__attribute__((used)) static void
idt_setup_from_table(gate_desc *idt, const struct idt_data *t, int size, bool sys)
{
 gate_desc desc;

 for (; size > 0; t++, size--) {
  idt_init_desc(&desc, t);
  write_idt_entry(idt, t->vector, &desc);
  if (sys)
   set_bit(t->vector, system_vectors);
 }
}
