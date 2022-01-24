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
struct related_binlog {int /*<<< orphan*/  kfs_replica; int /*<<< orphan*/  update_generation; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct related_binlog*) ; 
 int /*<<< orphan*/  sigrtmax_cnt ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 

int FUNC4 (struct related_binlog *R) {
  FUNC3 (1, "reloading kfs data for %s\n", R->path);
  R->update_generation = sigrtmax_cnt;
  FUNC0 (FUNC2 (R->kfs_replica, 0) >= 0);
  return FUNC1 (R);
}