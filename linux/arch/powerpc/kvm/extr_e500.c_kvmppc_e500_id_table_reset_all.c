
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_id_table {int dummy; } ;
struct kvmppc_vcpu_e500 {int idt; } ;


 int kvmppc_e500_recalc_shadow_pid (struct kvmppc_vcpu_e500*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void kvmppc_e500_id_table_reset_all(struct kvmppc_vcpu_e500 *vcpu_e500)
{
 memset(vcpu_e500->idt, 0, sizeof(struct vcpu_id_table));


 kvmppc_e500_recalc_shadow_pid(vcpu_e500);
}
