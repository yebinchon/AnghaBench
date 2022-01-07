
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pata_icside_state {scalar_t__ irq_port; } ;
struct expansion_card {struct pata_icside_state* irq_data; } ;


 scalar_t__ ICS_ARCIN_V5_INTROFFSET ;
 int readb (scalar_t__) ;

__attribute__((used)) static void pata_icside_irqdisable_arcin_v5 (struct expansion_card *ec, int irqnr)
{
 struct pata_icside_state *state = ec->irq_data;

 readb(state->irq_port + ICS_ARCIN_V5_INTROFFSET);
}
