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
 int /*<<< orphan*/  STATS_BUFF_SIZE ; 
 scalar_t__ malloc_mem ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,long,...) ; 
 int /*<<< orphan*/  stats_buff ; 
 scalar_t__ zalloc_mem ; 

int FUNC3 (struct connection *c) {
  stats_buffer_t sb;
  FUNC1 (&sb, c, stats_buff, STATS_BUFF_SIZE);
  FUNC0 (&sb, AM_GET_MEMORY_USAGE_SELF);
  FUNC2 (&sb,
    "malloc_mem\t%ld\n"
    "zalloc_mem\t%ld\n",
    (long) malloc_mem,
    (long) zalloc_mem);

  SB_BINLOG;
  //data_prepare_stats (&sb);
  FUNC2 (&sb, "%s\n", FullVersionStr);
  return sb.pos;
}