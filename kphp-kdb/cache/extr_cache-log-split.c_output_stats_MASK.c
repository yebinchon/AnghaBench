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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  rd_bytes ; 
 int /*<<< orphan*/  rd_rec ; 
 int /*<<< orphan*/  wr_bytes ; 
 int /*<<< orphan*/  wr_rec ; 

void FUNC2 (void) {
  FUNC0 (
	   "read: %lld bytes (reported binlog position %lld), %lld records\n"
	   "written: %lld bytes, %lld records\n",
	   rd_bytes, FUNC1(), rd_rec, wr_bytes, wr_rec);
}