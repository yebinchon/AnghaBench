
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int dummy; } ;


 int kvmppc_e500_id_table_reset_all (struct kvmppc_vcpu_e500*) ;

void kvmppc_e500_tlbil_all(struct kvmppc_vcpu_e500 *vcpu_e500)
{
 kvmppc_e500_id_table_reset_all(vcpu_e500);
}
