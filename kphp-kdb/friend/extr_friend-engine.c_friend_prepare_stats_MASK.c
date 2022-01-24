#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct connection {int dummy; } ;
struct TYPE_5__ {int pos; } ;
typedef  TYPE_1__ stats_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  AM_GET_MEMORY_USAGE_SELF ; 
 int /*<<< orphan*/  FullVersionStr ; 
 int /*<<< orphan*/  SB_BINLOG ; 
 int /*<<< orphan*/  SB_INDEX ; 
 int /*<<< orphan*/  STATS_BUFF_SIZE ; 
 int /*<<< orphan*/  alloc_rev_friends_nodes ; 
 int /*<<< orphan*/  alloc_tree_nodes ; 
 int /*<<< orphan*/  privacy_nodes ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  stats_buff ; 
 int /*<<< orphan*/  tot_privacy_len ; 
 int /*<<< orphan*/  tot_users ; 

int FUNC3 (struct connection *c) {
  stats_buffer_t sb;
  FUNC1 (&sb, c, stats_buff, STATS_BUFF_SIZE);
  FUNC0 (&sb, AM_GET_MEMORY_USAGE_SELF);
  SB_BINLOG;
  SB_INDEX;

  FUNC2 (&sb,
		  "tree_nodes\t%d\n"
		  "privacy_nodes\t%d\n"
      "reverse_friends_nodes\t%d\n"
		  "total_privacy_len\t%d\n"
		  "memory_users\t%d\n",
		  alloc_tree_nodes,
		  privacy_nodes,
      alloc_rev_friends_nodes,
		  tot_privacy_len,
		  tot_users);

  FUNC2 (&sb, "version\t%s\n", FullVersionStr);
  return sb.pos;
}