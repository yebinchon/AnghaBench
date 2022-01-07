
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tot_lists; } ;


 int FLI_ENTRY_LIST_ID (int) ;
 TYPE_1__ Header ;
 int assert (int) ;
 int mark_list_metafile (int ) ;
 int metafile_mode ;
 scalar_t__* postponed ;
 scalar_t__ prepare_list_metafile_num (int,int) ;

void do_all_postponed (void) {
  int i;
  if (!postponed) {
    assert (!Header.tot_lists);
    return;
  }
  assert (postponed);
  for (i = 0; i < Header.tot_lists; i++) {

    if (postponed[i]) {
      assert (prepare_list_metafile_num (i, -1) >= 0);
    }
    if (postponed[i] && !(metafile_mode & 1)) {
      mark_list_metafile (FLI_ENTRY_LIST_ID (i));
    }

  }
}
