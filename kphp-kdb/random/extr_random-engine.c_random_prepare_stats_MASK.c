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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATS_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  get_queries ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stats_buff ; 

int FUNC5 (struct connection *c) {
  FUNC1 ();
  stats_buffer_t sb;
  FUNC3 (&sb, c, stats_buff, STATS_BUFF_SIZE);
  FUNC2 (&sb, AM_GET_MEMORY_USAGE_SELF);
  FUNC4 (&sb, "version\t%s\n", FullVersionStr);
  FUNC0(get_queries);
  return sb.pos;
}