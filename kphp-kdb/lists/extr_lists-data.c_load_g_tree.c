
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * root; int DA; int IA; int N; } ;
typedef TYPE_1__ listree_xglobal_t ;
struct TYPE_5__ {int g_tree; } ;


 TYPE_3__* M_List ;
 int M_global_id_list ;
 int M_sorted_global_id_list ;
 int M_tot_entries ;

__attribute__((used)) static inline void load_g_tree (listree_xglobal_t *LX) {
  LX->N = M_tot_entries;
  LX->IA = M_sorted_global_id_list;
  LX->DA = M_global_id_list;
  LX->root = &M_List->g_tree;
}
