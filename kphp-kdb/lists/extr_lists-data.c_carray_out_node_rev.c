
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * IA; int DA; } ;
typedef TYPE_1__ listree_t ;


 int OARR_ENTRY (int ,int ) ;
 int b_out_rev (int ) ;

__attribute__((used)) static inline int carray_out_node_rev (listree_t *LI, int temp_id) {
  return b_out_rev (OARR_ENTRY (LI->DA, LI->IA[temp_id]));
}
