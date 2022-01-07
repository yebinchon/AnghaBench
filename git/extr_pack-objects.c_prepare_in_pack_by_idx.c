
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packing_data {struct packed_git** in_pack_by_idx; int repo; } ;
struct packed_git {int index; struct packed_git* next; } ;


 int ALLOC_ARRAY (struct packed_git**,int) ;
 unsigned int OE_IN_PACK_BITS ;
 int free (struct packed_git**) ;
 struct packed_git* get_all_packs (int ) ;

__attribute__((used)) static void prepare_in_pack_by_idx(struct packing_data *pdata)
{
 struct packed_git **mapping, *p;
 int cnt = 0, nr = 1U << OE_IN_PACK_BITS;

 ALLOC_ARRAY(mapping, nr);




 mapping[cnt++] = ((void*)0);
 for (p = get_all_packs(pdata->repo); p; p = p->next, cnt++) {
  if (cnt == nr) {
   free(mapping);
   return;
  }
  p->index = cnt;
  mapping[cnt] = p;
 }
 pdata->in_pack_by_idx = mapping;
}
