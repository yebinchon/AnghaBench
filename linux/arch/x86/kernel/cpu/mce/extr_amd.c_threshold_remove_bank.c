
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threshold_bank {int kobj; int cpus; int blocks; } ;
struct amd_northbridge {int * bank4; } ;


 int __threshold_remove_blocks (struct threshold_bank*) ;
 int amd_get_nb_id (unsigned int) ;
 int deallocate_threshold_block (unsigned int,int) ;
 scalar_t__ is_shared_bank (int) ;
 int kfree (struct threshold_bank*) ;
 int kobject_del (int ) ;
 int kobject_put (int ) ;
 struct amd_northbridge* node_to_amd_nb (int ) ;
 struct threshold_bank** per_cpu (int ,unsigned int) ;
 int refcount_dec_and_test (int *) ;
 int threshold_banks ;

__attribute__((used)) static void threshold_remove_bank(unsigned int cpu, int bank)
{
 struct amd_northbridge *nb;
 struct threshold_bank *b;

 b = per_cpu(threshold_banks, cpu)[bank];
 if (!b)
  return;

 if (!b->blocks)
  goto free_out;

 if (is_shared_bank(bank)) {
  if (!refcount_dec_and_test(&b->cpus)) {
   __threshold_remove_blocks(b);
   per_cpu(threshold_banks, cpu)[bank] = ((void*)0);
   return;
  } else {




   nb = node_to_amd_nb(amd_get_nb_id(cpu));
   nb->bank4 = ((void*)0);
  }
 }

 deallocate_threshold_block(cpu, bank);

free_out:
 kobject_del(b->kobj);
 kobject_put(b->kobj);
 kfree(b);
 per_cpu(threshold_banks, cpu)[bank] = ((void*)0);
}
