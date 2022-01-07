
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esca_block {int * cpu; int * mcn; int ipte_control; } ;
struct bsca_block {int * cpu; int mcn; int ipte_control; } ;


 int KVM_S390_BSCA_CPU_SLOTS ;
 int sca_copy_entry (int *,int *) ;

__attribute__((used)) static void sca_copy_b_to_e(struct esca_block *d, struct bsca_block *s)
{
 int i;

 d->ipte_control = s->ipte_control;
 d->mcn[0] = s->mcn;
 for (i = 0; i < KVM_S390_BSCA_CPU_SLOTS; i++)
  sca_copy_entry(&d->cpu[i], &s->cpu[i]);
}
