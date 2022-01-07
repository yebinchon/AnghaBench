
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int * idt; } ;


 int kfree (int *) ;

__attribute__((used)) static void kvmppc_e500_id_table_free(struct kvmppc_vcpu_e500 *vcpu_e500)
{
 kfree(vcpu_e500->idt);
 vcpu_e500->idt = ((void*)0);
}
