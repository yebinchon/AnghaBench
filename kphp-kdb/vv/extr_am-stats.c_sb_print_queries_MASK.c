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
typedef  int /*<<< orphan*/  stats_buffer_t ;

/* Variables and functions */
 scalar_t__ now ; 
 int /*<<< orphan*/  FUNC0 (long long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const* const,long long,char const* const,int /*<<< orphan*/ ) ; 
 scalar_t__ start_time ; 

void FUNC2 (stats_buffer_t *sb, const char *const desc, long long q) {
  FUNC1 (sb, "%s\t%lld\nqps_%s\t%.3lf\n", desc, q, desc, FUNC0 (q, now - start_time));
}