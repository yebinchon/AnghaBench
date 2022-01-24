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
struct simdisk {scalar_t__ queue; scalar_t__ gd; } ;
struct proc_dir_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct simdisk*) ; 

__attribute__((used)) static void FUNC4(struct simdisk *dev, int which,
		struct proc_dir_entry *procdir)
{
	char tmp[2] = { '0' + which, 0 };

	FUNC3(dev);
	if (dev->gd)
		FUNC1(dev->gd);
	if (dev->queue)
		FUNC0(dev->queue);
	FUNC2(tmp, procdir);
}