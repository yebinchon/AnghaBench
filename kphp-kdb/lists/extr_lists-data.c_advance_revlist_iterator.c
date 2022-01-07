
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eof; scalar_t__ cur_pos; scalar_t__ items_num; scalar_t__ metafile_number; scalar_t__ change_metafile; } ;


 int init_revlist_iterator (scalar_t__,scalar_t__) ;
 TYPE_1__ revlist_iterator ;
 scalar_t__ revlist_metafile_mode ;
 int update_revlist_use (scalar_t__) ;

int advance_revlist_iterator (void) {
  if (revlist_iterator.eof) {
    return 0;
  }
  revlist_iterator.cur_pos ++;
  if (revlist_iterator.cur_pos == revlist_iterator.items_num) {
    if (!revlist_iterator.change_metafile) {
      revlist_iterator.eof = 1;
      return 0;
    } else {
      return init_revlist_iterator (revlist_iterator.metafile_number + 1, revlist_iterator.change_metafile);
    }
  } else {
    if (revlist_metafile_mode && revlist_iterator.change_metafile) {
      update_revlist_use (revlist_iterator.metafile_number);
    }
    return 1;
  }
}
