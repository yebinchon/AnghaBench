
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int N; scalar_t__ DA; scalar_t__ IA; int * root; } ;
typedef TYPE_1__ listree_t ;
struct TYPE_7__ {int * o_tree_sub; } ;
struct TYPE_6__ {int* sublist_size_cum; } ;


 TYPE_4__* M_List ;
 TYPE_3__* M_metafile ;
 scalar_t__ M_obj_id_list ;
 scalar_t__ M_sublist_temp_id_list ;
 int M_tot_entries ;
 int assert (int) ;

__attribute__((used)) static inline void load_o_tree_sub (listree_t *LI, int sublist) {
  assert (!(sublist & -8));
  LI->root = &M_List->o_tree_sub[sublist];
  if (M_metafile) {
    int curptr = M_metafile->sublist_size_cum[sublist], nxtptr = M_metafile->sublist_size_cum[sublist + 1];
    assert (curptr >= 0 && curptr <= nxtptr && nxtptr <= M_tot_entries);
    LI->N = nxtptr - curptr;
    LI->IA = M_sublist_temp_id_list + curptr;
    LI->DA = M_obj_id_list;
  } else {
    LI->N = 0;
    LI->IA = 0;
    LI->DA = 0;
  }
}
