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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct skd_device*) ; 
 int /*<<< orphan*/  skd_recover_request ; 

__attribute__((used)) static void FUNC1(struct skd_device *skdev)
{
	FUNC0(&skdev->tag_set, skd_recover_request, skdev);
}