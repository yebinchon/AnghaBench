
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;


 int INIT_HLIST_HEAD (struct hlist_head*) ;

__attribute__((used)) static void kvmppc_mmu_hpte_init_hash(struct hlist_head *hash_list, int len)
{
 int i;

 for (i = 0; i < len; i++)
  INIT_HLIST_HEAD(&hash_list[i]);
}
