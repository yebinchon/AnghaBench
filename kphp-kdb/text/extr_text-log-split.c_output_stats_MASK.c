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
 int /*<<< orphan*/  conv_rec ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  rd_bytes ; 
 int /*<<< orphan*/  rd_rec ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  wr_bytes ; 
 int /*<<< orphan*/  wr_rec ; 

void FUNC2 (void) {
  FUNC0 (stderr,
	   "read: %d bytes (reported binlog position %d), %d records\n"
	   "written: %d bytes, %d records (%d out of them converted)\n",
	   rd_bytes, FUNC1(), rd_rec, wr_bytes, wr_rec, conv_rec);
}