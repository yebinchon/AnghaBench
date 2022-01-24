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
 int /*<<< orphan*/  adj_rec ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  line_no ; 
 int /*<<< orphan*/  rd_bytes ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  wr_bytes ; 

void FUNC1 (void) {
  FUNC0 (stderr,
	   "read: %d bytes, %d records read, %d processed\n"
	   "written: %d bytes\n",
	   rd_bytes, line_no, adj_rec, wr_bytes);
}