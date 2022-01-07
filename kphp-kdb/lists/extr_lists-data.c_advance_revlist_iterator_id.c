
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int object_id_t ;
struct TYPE_2__ {scalar_t__ cur_pos; scalar_t__ items_num; int eof; scalar_t__ change_metafile; scalar_t__ metafile_number; int RData; } ;


 int init_revlist_iterator (scalar_t__,scalar_t__) ;
 TYPE_1__ revlist_iterator ;
 scalar_t__ revlist_lookup_left (int ,int ,scalar_t__) ;

int advance_revlist_iterator_id (object_id_t object_id) {
  revlist_iterator.cur_pos = revlist_lookup_left (object_id, revlist_iterator.RData, revlist_iterator.items_num);
  if (revlist_iterator.cur_pos == revlist_iterator.items_num && revlist_iterator.change_metafile) {
    return init_revlist_iterator (revlist_iterator.metafile_number + 1, revlist_iterator.change_metafile);
  } else {
    revlist_iterator.eof = (revlist_iterator.cur_pos == revlist_iterator.items_num);
    return !revlist_iterator.eof;
  }
}
