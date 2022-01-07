
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_pte {int v; } ;


 int HPTE_LOCK_BIT ;
 int spin_begin () ;
 int spin_cpu_relax () ;
 int spin_end () ;
 int test_and_set_bit_lock (int ,unsigned long*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static inline void native_lock_hpte(struct hash_pte *hptep)
{
 unsigned long *word = (unsigned long *)&hptep->v;

 while (1) {
  if (!test_and_set_bit_lock(HPTE_LOCK_BIT, word))
   break;
  spin_begin();
  while(test_bit(HPTE_LOCK_BIT, word))
   spin_cpu_relax();
  spin_end();
 }
}
