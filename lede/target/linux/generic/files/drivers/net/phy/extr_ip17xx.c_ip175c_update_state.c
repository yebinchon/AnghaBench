
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip17xx_state {int dummy; } ;


 int ip175c_correct_vlan_state (struct ip17xx_state*) ;
 int ip175c_set_state (struct ip17xx_state*) ;

__attribute__((used)) static int ip175c_update_state(struct ip17xx_state *state)
{
 ip175c_correct_vlan_state(state);
 return ip175c_set_state(state);
}
