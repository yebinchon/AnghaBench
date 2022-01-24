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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rd_bytes ; 
 int /*<<< orphan*/  rd_rec ; 
 scalar_t__ rend ; 
 scalar_t__ rptr ; 
 int /*<<< orphan*/  sk_bytes ; 
 int /*<<< orphan*/  sk_rec ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  wr_bytes ; 
 int /*<<< orphan*/  wr_rec ; 

void FUNC1 (void) {
  FUNC0 (stderr,
	   "read: %d bytes (%ld remaining), %d records\n"
	   "written: %d bytes, %d records\n"
	   "skipped: %d bytes, %d records\n",
	   rd_bytes, (long)(rend - rptr), rd_rec, wr_bytes, wr_rec, sk_bytes, sk_rec);
}