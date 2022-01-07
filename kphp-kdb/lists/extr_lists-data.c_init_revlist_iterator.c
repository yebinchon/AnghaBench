
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int metafile_number; int cur_pos; int change_metafile; int eof; int items_num; int RData; } ;


 int RData ;
 int assert (int) ;
 int check_revlist_metafile_loaded (int,int) ;
 int get_revlist_metafile_offset (int) ;
 int get_revlist_metafile_ptr (int) ;
 int idx_list_entries ;
 int object_list_bytes ;
 scalar_t__ prepare_object_metafile_num (int,int) ;
 TYPE_1__ revlist_iterator ;
 int tot_revlist_metafiles ;
 int vkprintf (int,char*,int,int) ;

int init_revlist_iterator (int metafile_number, int change_metafile) {
  vkprintf (2, "Loading revlist iterator at metafile %d of %d\n", metafile_number, tot_revlist_metafiles);
  if (metafile_number == -1) {
    change_metafile = 0;
  }
  revlist_iterator.metafile_number = metafile_number;
  revlist_iterator.cur_pos = 0;
  revlist_iterator.change_metafile = change_metafile;
  if (metafile_number >= tot_revlist_metafiles) {
    revlist_iterator.eof = 1;
    return 0;
  }
  if (metafile_number == -1) {
    revlist_iterator.RData = RData;
    revlist_iterator.items_num = idx_list_entries;
  } else {
    if (!check_revlist_metafile_loaded (metafile_number, -1)) {

      assert (prepare_object_metafile_num (metafile_number, -1) >= 0);
    }
    revlist_iterator.RData = get_revlist_metafile_ptr (metafile_number);



    revlist_iterator.items_num = (get_revlist_metafile_offset (metafile_number + 1) - get_revlist_metafile_offset (metafile_number)) >> 3;

  }
  revlist_iterator.eof = (revlist_iterator.items_num <= revlist_iterator.cur_pos);
  if (change_metafile && revlist_iterator.eof) {
    return init_revlist_iterator (metafile_number + 1, change_metafile);
  }
  return !revlist_iterator.eof;
}
