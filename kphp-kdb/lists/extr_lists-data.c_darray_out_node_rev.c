
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t* IA; int * DA; } ;
typedef TYPE_1__ listree_xglobal_t ;
typedef int listree_t ;


 int M_obj_id_list ;
 int OARR_ENTRY (int ,size_t) ;
 int b_out_g_rev (int ,int ) ;

__attribute__((used)) static inline int darray_out_node_rev (listree_t *LI, int temp_id) {
  listree_xglobal_t *LX = (listree_xglobal_t *)LI;
  return b_out_g_rev (OARR_ENTRY (M_obj_id_list, LX->IA[temp_id]), LX->DA[LX->IA[temp_id]]);
}
