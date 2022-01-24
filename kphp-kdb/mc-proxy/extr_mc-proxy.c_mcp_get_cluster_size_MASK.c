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
struct connection {int dummy; } ;
struct TYPE_2__ {int tot_buckets; } ;

/* Variables and functions */
 TYPE_1__* CC ; 
 int /*<<< orphan*/  mcp_stats_buffer ; 
 int FUNC0 (struct connection*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC2 (struct connection *c, const char *key) {
  return FUNC0 (c, key, mcp_stats_buffer, FUNC1 (mcp_stats_buffer, "%d", CC->tot_buckets));
}