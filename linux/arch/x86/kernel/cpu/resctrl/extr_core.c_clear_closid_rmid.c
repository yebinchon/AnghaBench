
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resctrl_pqr_state {scalar_t__ cur_rmid; scalar_t__ cur_closid; scalar_t__ default_rmid; scalar_t__ default_closid; } ;


 int IA32_PQR_ASSOC ;
 int pqr_state ;
 struct resctrl_pqr_state* this_cpu_ptr (int *) ;
 int wrmsr (int ,int ,int ) ;

__attribute__((used)) static void clear_closid_rmid(int cpu)
{
 struct resctrl_pqr_state *state = this_cpu_ptr(&pqr_state);

 state->default_closid = 0;
 state->default_rmid = 0;
 state->cur_closid = 0;
 state->cur_rmid = 0;
 wrmsr(IA32_PQR_ASSOC, 0, 0);
}
