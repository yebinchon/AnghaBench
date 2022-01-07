
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcore {int num_threads; } ;
struct core_info {int total_threads; } ;


 int can_dynamic_split (struct kvmppc_vcore*,struct core_info*) ;

__attribute__((used)) static bool can_piggyback(struct kvmppc_vcore *pvc, struct core_info *cip,
     int target_threads)
{
 if (cip->total_threads + pvc->num_threads > target_threads)
  return 0;

 return can_dynamic_split(pvc, cip);
}
