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
struct skd_special_context {int dummy; } ;
struct skd_device {struct skd_special_context internal_skspcl; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEST_UNIT_READY ; 
 int /*<<< orphan*/  FUNC0 (struct skd_device*,struct skd_special_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct skd_device *skdev)
{
	struct skd_special_context *skspcl = &skdev->internal_skspcl;

	FUNC0(skdev, skspcl, TEST_UNIT_READY);
}