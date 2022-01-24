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
struct loop_device {int lo_flags; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int LO_FLAGS_DIRECT_IO ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC1(struct loop_device *lo, char *buf)
{
	int dio = (lo->lo_flags & LO_FLAGS_DIRECT_IO);

	return FUNC0(buf, "%s\n", dio ? "1" : "0");
}