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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 unsigned long SCU_DOWN ; 
 int /*<<< orphan*/  msic_device ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *nb,
				  unsigned long code, void *data)
{
	if (code == SCU_DOWN) {
		FUNC1(&msic_device);
		return 0;
	}

	return FUNC0(&msic_device);
}