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
struct connection {int last_query_time; int query_start_time; int /*<<< orphan*/  Out; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  C_INTIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  get_queries ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int total_get_time ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC3 (struct connection *c, int key_count) {
  c->flags &= ~C_INTIMEOUT;
  c->last_query_time = FUNC1 (CLOCK_MONOTONIC) - c->query_start_time;
  total_get_time += c->last_query_time;
  get_queries++;
  FUNC2 (&c->Out, "END\r\n", 5);
  if (verbosity > 1) {
    FUNC0 (stderr, "memcache_get end: query time %.3dms\n", c->last_query_time * 1000);
  }
  return 0;
}