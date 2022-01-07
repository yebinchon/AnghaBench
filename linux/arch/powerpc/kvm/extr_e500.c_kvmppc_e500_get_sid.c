
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_id_table {int *** id; } ;
struct kvmppc_vcpu_e500 {struct vcpu_id_table* idt; } ;


 int BUG_ON (int) ;
 unsigned int NUM_TIDS ;
 int _tlbil_all () ;
 int kvmppc_e500_recalc_shadow_pid (struct kvmppc_vcpu_e500*) ;
 int local_sid_destroy_all () ;
 int local_sid_lookup (int *) ;
 int local_sid_setup_one (int *) ;

unsigned int kvmppc_e500_get_sid(struct kvmppc_vcpu_e500 *vcpu_e500,
     unsigned int as, unsigned int gid,
     unsigned int pr, int avoid_recursion)
{
 struct vcpu_id_table *idt = vcpu_e500->idt;
 int sid;

 BUG_ON(as >= 2);
 BUG_ON(gid >= NUM_TIDS);
 BUG_ON(pr >= 2);

 sid = local_sid_lookup(&idt->id[as][gid][pr]);

 while (sid <= 0) {

  sid = local_sid_setup_one(&idt->id[as][gid][pr]);
  if (sid <= 0) {
   _tlbil_all();
   local_sid_destroy_all();
  }


  if (!avoid_recursion)
   kvmppc_e500_recalc_shadow_pid(vcpu_e500);
 }

 return sid;
}
