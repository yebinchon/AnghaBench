#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct update_info_ctx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 TYPE_1__** info ; 
 int num_pack ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct update_info_ctx*,char*,...) ; 

__attribute__((used)) static int FUNC2(struct update_info_ctx *uic)
{
	int i;
	for (i = 0; i < num_pack; i++) {
		if (FUNC1(uic, "P %s\n", FUNC0(info[i]->p)) < 0)
			return -1;
	}
	if (FUNC1(uic, "\n") < 0)
		return -1;
	return 0;
}