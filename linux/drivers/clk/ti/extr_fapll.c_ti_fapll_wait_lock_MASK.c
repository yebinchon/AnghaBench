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
typedef  int u32 ;
struct fapll_data {int /*<<< orphan*/  name; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FAPLL_MAIN_LOCK ; 
 int FAPLL_MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct fapll_data *fd)
{
	int retries = FAPLL_MAX_RETRIES;
	u32 v;

	while ((v = FUNC1(fd->base))) {
		if (v & FAPLL_MAIN_LOCK)
			return 0;

		if (retries-- <= 0)
			break;

		FUNC2(1);
	}

	FUNC0("%s failed to lock\n", fd->name);

	return -ETIMEDOUT;
}