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
typedef  int /*<<< orphan*/  UserIndex ;

/* Variables and functions */
 int HEAP_SIZE ; 
 int Heap ; 
 int MAX_DATA ; 
 int MAX_PAIRS ; 
 int date_adj ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int heap_a ; 
 int max_Dc ; 
 int /*<<< orphan*/  max_Dc_user ; 
 int max_Pc ; 
 int /*<<< orphan*/  max_Pc_user ; 
 int max_Ps ; 
 int /*<<< orphan*/  max_Ps_user ; 
 int msgs_analyzed ; 
 int msgs_read ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int tot_Dc ; 
 int tot_Pc ; 
 int tot_Ps ; 
 int tot_bad_senders ; 
 int tot_known_senders ; 
 int tot_sender_hashes ; 
 int tot_users ; 
 int ui_bytes ; 

void FUNC2 (void) {
  FUNC0 (stderr, "%d messages read, %d analyzed belonging to %d users\n", 
	   msgs_read, msgs_analyzed, tot_users);
  FUNC0 (stderr, "date adjusted %d times\n", date_adj);
  FUNC0 (stderr, "username data bytes: %d used out of %ld (%d%%)\n",
	   ui_bytes, (long)sizeof(UserIndex), FUNC1 (ui_bytes, sizeof(UserIndex)));
  FUNC0 (stderr, "messages with unknown correspondents: %d out of %d (%d%%)\n",
	   tot_bad_senders, tot_bad_senders+tot_known_senders, 
	   FUNC1 (tot_bad_senders, tot_bad_senders+tot_known_senders));
  FUNC0 (stderr, "imported username hashes: %d out of %d (%d%%)\n",
	   tot_sender_hashes, tot_Pc, FUNC1 (tot_sender_hashes, tot_Pc));
  FUNC0 (stderr, "messages buffer memory bytes: total %d, used %ld (%d%%)\n",
	   HEAP_SIZE, (long)(heap_a - Heap), FUNC1 (heap_a - Heap, HEAP_SIZE));
  FUNC0 (stderr, "pairs:\ttotal %d, maximal usage %d of %d (%d%%) for user %d\n",
	   tot_Pc, max_Pc, MAX_PAIRS, FUNC1 (max_Pc, MAX_PAIRS), max_Pc_user);
  FUNC0 (stderr, "hashes:\ttotal %d, maximal usage %d of %d (%d%%) for user %d\n",
	   tot_Ps, max_Ps, MAX_PAIRS, FUNC1 (max_Ps, MAX_PAIRS), max_Ps_user);
  FUNC0 (stderr, "data:\ttotal %d, maximal usage %d of %d (%d%%) for user %d\n",
	   tot_Dc, max_Dc, MAX_DATA, FUNC1 (max_Dc, MAX_DATA), max_Dc_user);
}