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
struct loop_device {scalar_t__ lo_state; int /*<<< orphan*/  lo_sizelimit; int /*<<< orphan*/  lo_offset; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ Lo_bound ; 
 int FUNC0 (struct loop_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct loop_device *lo)
{
	if (FUNC1(lo->lo_state != Lo_bound))
		return -ENXIO;

	return FUNC0(lo, lo->lo_offset, lo->lo_sizelimit);
}