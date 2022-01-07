
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* o_tree; int metafile_index; } ;
typedef TYPE_2__ list_t ;
struct TYPE_6__ {scalar_t__ delta; } ;


 TYPE_2__ DummyList ;
 scalar_t__ M_tot_entries ;
 scalar_t__ metafile_mode ;
 int prepare_list_metafile_num (int ,int) ;
 int unpack_metafile_pointers (TYPE_2__*) ;

int report_one (list_t *L) {
  if (metafile_mode) {
    if (L == &DummyList || L->o_tree->delta == 0) {
      return 1;
    } else {
      prepare_list_metafile_num (L->metafile_index, -1);
      unpack_metafile_pointers (L);

      return (M_tot_entries + L->o_tree->delta) > 0;
    }
  } else {
    return 1;
  }
}
