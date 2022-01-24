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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vu_cmdline_parent ; 
 int vu_cmdline_parent_registered ; 
 int /*<<< orphan*/  vu_unregister_cmdline_device ; 

__attribute__((used)) static void FUNC2(void)
{
	if (vu_cmdline_parent_registered) {
		FUNC0(&vu_cmdline_parent, NULL,
				      vu_unregister_cmdline_device);
		FUNC1(&vu_cmdline_parent);
		vu_cmdline_parent_registered = false;
	}
}