#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int metafile_number; int cur_pos; int change_metafile; int eof; int items_num; int /*<<< orphan*/  RData; } ;

/* Variables and functions */
 int /*<<< orphan*/  RData ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int idx_list_entries ; 
 int object_list_bytes ; 
 scalar_t__ FUNC4 (int,int) ; 
 TYPE_1__ revlist_iterator ; 
 int tot_revlist_metafiles ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,int) ; 

int FUNC6 (int metafile_number, int change_metafile) {
  FUNC5 (2, "Loading revlist iterator at metafile %d of %d\n", metafile_number, tot_revlist_metafiles);
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
    if (!FUNC1 (metafile_number, -1)) {
      //assert (load_revlist_metafile_aio (metafile_number, -1) >= 0);
      FUNC0 (FUNC4 (metafile_number, -1) >= 0);
    }
    revlist_iterator.RData = FUNC3 (metafile_number);
#ifdef LISTS_Z
    revlist_iterator.items_num = (get_revlist_metafile_offset (metafile_number + 1) - get_revlist_metafile_offset (metafile_number)) / object_list_bytes;
#else
    revlist_iterator.items_num = (FUNC2 (metafile_number + 1) - FUNC2 (metafile_number)) >> 3;
#endif
  }
  revlist_iterator.eof = (revlist_iterator.items_num <= revlist_iterator.cur_pos);
  if (change_metafile && revlist_iterator.eof) {
    return FUNC6 (metafile_number + 1, change_metafile);
  }
  return !revlist_iterator.eof;
}