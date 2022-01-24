#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  MAX_DATA ; 
 int /*<<< orphan*/  MAX_HASHES ; 
 int /*<<< orphan*/  MAX_METAINDEX_USERS ; 
 int M_cnt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__* fsize ; 
 scalar_t__ log_wpos ; 
 int max_Dc ; 
 int /*<<< orphan*/  max_Dc_user ; 
 int max_Qc ; 
 int /*<<< orphan*/  max_Qc_user ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int purged_msgs_cnt ; 
 int start_time ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int tot_Dc ; 
 int tot_Qc ; 
 int tot_binlog_messages ; 
 int tot_dropped_pairs ; 
 int tot_imported_pairs ; 
 int users_added ; 
 int users_dropped ; 
 scalar_t__ wpos ; 

void FUNC3 (void) {
  FUNC0 (stderr, "\nmessages purged from binlog: %d\n", purged_msgs_cnt);
  FUNC0 (stderr, "messages imported from binlog: %d\n", tot_binlog_messages);
  FUNC0 (stderr, "pairs imported from binlog: %d\n", tot_imported_pairs);
  FUNC0 (stderr, "pairs dropped from old data: %d\n", tot_dropped_pairs);
  FUNC0 (stderr, "total pairs output: %d\n", tot_Dc);
  FUNC0 (stderr, "old users dropped: %d\n", users_dropped);
  FUNC0 (stderr, "new users added: %d\n", users_added);
  FUNC0 (stderr, "maximal pairs used: %d out of %d (%d%%) for user %d\n", max_Dc, MAX_DATA, FUNC1(max_Dc, MAX_DATA), max_Dc_user);
  FUNC0 (stderr, "total hashes output: %d\n", tot_Qc);
  FUNC0 (stderr, "maximal hashes used: %d out of %d (%d%%) for user %d\n", max_Qc, MAX_HASHES, FUNC1(max_Qc, MAX_HASHES), max_Qc_user);
  FUNC0 (stderr, "output users: %d out of %d (%d%%)\n", M_cnt, MAX_METAINDEX_USERS, FUNC1(M_cnt, MAX_METAINDEX_USERS));
  FUNC0 (stderr, "binlog size: old %d, new %lld\n", (long long) fsize[1], (long long) log_wpos);
  FUNC0 (stderr, "huge index size: old %d, new %lld\n", (long long) fsize[0], (long long) wpos);
  FUNC0 (stderr, "used time: %d seconds\n\n", FUNC2(0) - start_time);
}