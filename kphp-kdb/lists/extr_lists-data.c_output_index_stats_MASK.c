#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int tot_lists; } ;
struct TYPE_3__ {int tot_lists; scalar_t__ data_end_offset; int /*<<< orphan*/  extra_data_offset; int /*<<< orphan*/  revlist_data_offset; int /*<<< orphan*/  list_data_offset; int /*<<< orphan*/  list_index_offset; } ;

/* Variables and functions */
 TYPE_2__ Header ; 
 TYPE_1__ NewHeader ; 
 int /*<<< orphan*/  alloc_large_nodes ; 
 double binlog_load_time ; 
 scalar_t__ dyn_cur ; 
 scalar_t__ dyn_first ; 
 scalar_t__ dyn_last ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,long,long,...) ; 
 double idx_end_time ; 
 double idx_start_time ; 
 double index_load_time ; 
 scalar_t__ new_total_entries ; 
 int /*<<< orphan*/  stderr ; 
 int tot_lists ; 

__attribute__((used)) static void FUNC1 (void) {
  FUNC0 (stderr, "%ld total lists: %ld lists from old index, %d in memory\n",
    NewHeader.tot_lists, Header.tot_lists, tot_lists);
  FUNC0 (stderr, "%ld total list entries (%.3ld average); %d in-memory entries\n",
    new_total_entries, NewHeader.tot_lists ? (double) new_total_entries / NewHeader.tot_lists : 0, alloc_large_nodes);

  if (NewHeader.data_end_offset > 0) {
    FUNC0 (stderr, "index offsets: list_index=%ld list_data=%ld revlist_data=%d extra_data=%d end=%ld\n",
 	NewHeader.list_index_offset, NewHeader.list_data_offset, NewHeader.revlist_data_offset, NewHeader.extra_data_offset, NewHeader.data_end_offset);
  }
  FUNC0 (stderr, "total time: %.4lds = %.4lds + %.04fs + %.04fs (read index + read binlog + generate index)\n",
     idx_end_time - idx_start_time + index_load_time + binlog_load_time,
     index_load_time, binlog_load_time, idx_end_time - idx_start_time);
  FUNC0 (stderr, "used memory: %ld bytes out of %ld\n", (long) (dyn_cur - dyn_first), (long) (dyn_last - dyn_first));
}