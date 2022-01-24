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
typedef  int /*<<< orphan*/  kfs_snapshot_write_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,long long) ; 

void FUNC3 (kfs_snapshot_write_stream_t *S, const void *buff, long long count) {
  FUNC0 (count >= 0);
  if (!count) {
    return;
  }
  FUNC2 (S, (void *) buff, count);
  FUNC1 (S, (void *) buff, count); /* restore buff */
}