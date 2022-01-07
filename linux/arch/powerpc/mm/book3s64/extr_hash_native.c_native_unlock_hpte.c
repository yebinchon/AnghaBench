
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_pte {int v; } ;


 int HPTE_LOCK_BIT ;
 int clear_bit_unlock (int ,unsigned long*) ;

__attribute__((used)) static inline void native_unlock_hpte(struct hash_pte *hptep)
{
 unsigned long *word = (unsigned long *)&hptep->v;

 clear_bit_unlock(HPTE_LOCK_BIT, word);
}
