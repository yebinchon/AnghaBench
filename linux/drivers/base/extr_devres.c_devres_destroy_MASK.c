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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dr_release_t ;
typedef  int /*<<< orphan*/  dr_match_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct device *dev, dr_release_t release,
		   dr_match_t match, void *match_data)
{
	void *res;

	res = FUNC1(dev, release, match, match_data);
	if (FUNC2(!res))
		return -ENOENT;

	FUNC0(res);
	return 0;
}