
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct split_index {int refcount; } ;
struct index_state {struct split_index* split_index; } ;


 struct split_index* xcalloc (int,int) ;

struct split_index *init_split_index(struct index_state *istate)
{
 if (!istate->split_index) {
  istate->split_index = xcalloc(1, sizeof(*istate->split_index));
  istate->split_index->refcount = 1;
 }
 return istate->split_index;
}
