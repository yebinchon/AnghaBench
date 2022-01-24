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
 scalar_t__ dump_log_pos ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,long long) ; 
 int /*<<< orphan*/  stdout ; 

inline void FUNC1 (long long pos) {
  if (dump_log_pos) { FUNC0 (stdout, "%lld\t",  pos); }
}