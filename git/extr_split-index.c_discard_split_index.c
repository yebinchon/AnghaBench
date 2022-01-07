
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct split_index {struct split_index* base; scalar_t__ refcount; } ;
struct index_state {struct split_index* split_index; } ;


 int discard_index (struct split_index*) ;
 int free (struct split_index*) ;

void discard_split_index(struct index_state *istate)
{
 struct split_index *si = istate->split_index;
 if (!si)
  return;
 istate->split_index = ((void*)0);
 si->refcount--;
 if (si->refcount)
  return;
 if (si->base) {
  discard_index(si->base);
  free(si->base);
 }
 free(si);
}
