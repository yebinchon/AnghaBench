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
typedef  int /*<<< orphan*/  object_id_t ;
struct TYPE_2__ {long cur_pos; int /*<<< orphan*/  RData; int /*<<< orphan*/  eof; } ;

/* Variables and functions */
 int /*<<< orphan*/  CUR_REVLIST_OBJECT_ID ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ revlist_iterator ; 
 scalar_t__ revlist_metafile_mode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,long,int) ; 
 int tot_revlist_metafiles ; 

void FUNC4 (void) {
  int cur_metafile;
  if (revlist_metafile_mode) {
    cur_metafile = 0;;
  } else {
    cur_metafile = -1;
  }
  object_id_t object_id;
  while (cur_metafile < tot_revlist_metafiles) {
    FUNC1 (cur_metafile, 0);
    long i = 0;
    while (!revlist_iterator.eof) {
      object_id = CUR_REVLIST_OBJECT_ID;
      i = revlist_iterator.cur_pos;
      while (!revlist_iterator.eof && FUNC0 ()) {
        if (!FUNC2 (object_id, CUR_REVLIST_OBJECT_ID)) {
          break;
        }
      }
      FUNC3 (revlist_iterator.RData, i, revlist_iterator.cur_pos - 1);
    }
    cur_metafile ++;
  }
/*  for (i = 0; i < 1980 && i < idx_list_entries; i++) { 
    fprintf (stderr, "old revlist: entry(%d)=" idout "#" idout "\n",
      i, out_object_id (REVLIST_OBJECT_ID(i)), out_list_id (REVLIST_LIST_ID(i)));
  }*/

}