
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int object_id_t ;
struct TYPE_2__ {long cur_pos; int RData; int eof; } ;


 int CUR_REVLIST_OBJECT_ID ;
 scalar_t__ advance_revlist_iterator () ;
 int init_revlist_iterator (int,int ) ;
 int object_id_equal (int ,int ) ;
 TYPE_1__ revlist_iterator ;
 scalar_t__ revlist_metafile_mode ;
 int sort_revlist_part (int ,long,int) ;
 int tot_revlist_metafiles ;

void resort_revlist (void) {
  int cur_metafile;
  if (revlist_metafile_mode) {
    cur_metafile = 0;;
  } else {
    cur_metafile = -1;
  }
  object_id_t object_id;
  while (cur_metafile < tot_revlist_metafiles) {
    init_revlist_iterator (cur_metafile, 0);
    long i = 0;
    while (!revlist_iterator.eof) {
      object_id = CUR_REVLIST_OBJECT_ID;
      i = revlist_iterator.cur_pos;
      while (!revlist_iterator.eof && advance_revlist_iterator ()) {
        if (!object_id_equal (object_id, CUR_REVLIST_OBJECT_ID)) {
          break;
        }
      }
      sort_revlist_part (revlist_iterator.RData, i, revlist_iterator.cur_pos - 1);
    }
    cur_metafile ++;
  }





}
