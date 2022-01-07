
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ip17xx_state {int num_vlans; TYPE_3__* vlans; TYPE_2__* ports; TYPE_1__* regs; int vlan_enabled; } ;
struct TYPE_6__ {unsigned int ports; } ;
struct TYPE_5__ {int shareports; } ;
struct TYPE_4__ {int NUM_PORTS; } ;


 int MAX_VLANS ;

__attribute__((used)) static void ip175c_correct_vlan_state(struct ip17xx_state *state)
{
 int i, j;
 state->num_vlans = 0;
 for (i=0; i<MAX_VLANS; i++) {
  if (state->vlans[i].ports != 0) {
   state->num_vlans = i+1;
  }
 }

 for (i=0; i<state->regs->NUM_PORTS; i++) {
  unsigned int portmask = (1<<i);
  if (!state->vlan_enabled) {

   state->ports[i].shareports = (1<<state->regs->NUM_PORTS)-1;
   continue;
  }
  state->ports[i].shareports = portmask;
  for (j=0; j<MAX_VLANS; j++) {
   if (state->vlans[j].ports & portmask)
    state->ports[i].shareports |= state->vlans[j].ports;
  }
 }
}
