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
 scalar_t__ dump_timestamp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 () ; 
 int now ; 
 int /*<<< orphan*/  stdout ; 

inline void FUNC2 (void) {
  if (dump_log_pos) { FUNC0 (stdout, "%d\t",  FUNC1()); }
  if (dump_timestamp) { FUNC0 (stdout, "%d\t", now); }
}