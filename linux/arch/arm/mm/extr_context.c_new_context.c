
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int id; } ;
struct mm_struct {TYPE_1__ context; } ;


 int ASID_FIRST_VERSION ;
 int ASID_MASK ;
 int NUM_USER_ASIDS ;
 int __set_bit (int,int ) ;
 int __test_and_set_bit (int,int ) ;
 int asid_generation ;
 int asid_map ;
 int atomic64_add_return (int ,int *) ;
 int atomic64_read (int *) ;
 scalar_t__ check_update_reserved_asid (int,int) ;
 int cpumask_clear (int ) ;
 int find_next_zero_bit (int ,int,int) ;
 int flush_context (unsigned int) ;
 int mm_cpumask (struct mm_struct*) ;

__attribute__((used)) static u64 new_context(struct mm_struct *mm, unsigned int cpu)
{
 static u32 cur_idx = 1;
 u64 asid = atomic64_read(&mm->context.id);
 u64 generation = atomic64_read(&asid_generation);

 if (asid != 0) {
  u64 newasid = generation | (asid & ~ASID_MASK);





  if (check_update_reserved_asid(asid, newasid))
   return newasid;





  asid &= ~ASID_MASK;
  if (!__test_and_set_bit(asid, asid_map))
   return newasid;
 }
 asid = find_next_zero_bit(asid_map, NUM_USER_ASIDS, cur_idx);
 if (asid == NUM_USER_ASIDS) {
  generation = atomic64_add_return(ASID_FIRST_VERSION,
       &asid_generation);
  flush_context(cpu);
  asid = find_next_zero_bit(asid_map, NUM_USER_ASIDS, 1);
 }

 __set_bit(asid, asid_map);
 cur_idx = asid;
 cpumask_clear(mm_cpumask(mm));
 return asid | generation;
}
