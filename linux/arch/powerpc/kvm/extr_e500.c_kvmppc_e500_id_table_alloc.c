
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_id_table {int dummy; } ;
struct kvmppc_vcpu_e500 {void* idt; } ;


 int GFP_KERNEL ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static void *kvmppc_e500_id_table_alloc(struct kvmppc_vcpu_e500 *vcpu_e500)
{
 vcpu_e500->idt = kzalloc(sizeof(struct vcpu_id_table), GFP_KERNEL);
 return vcpu_e500->idt;
}
