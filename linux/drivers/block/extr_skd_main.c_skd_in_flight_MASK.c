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
struct skd_device {int /*<<< orphan*/  tag_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  skd_inc_in_flight ; 

__attribute__((used)) static int FUNC1(struct skd_device *skdev)
{
	int count = 0;

	FUNC0(&skdev->tag_set, skd_inc_in_flight, &count);

	return count;
}