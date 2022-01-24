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
typedef  int /*<<< orphan*/  u32 ;
struct btmtksdio_dev {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_REG_CHLPCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC1(struct btmtksdio_dev *bdev)
{
	return FUNC0(bdev->func, MTK_REG_CHLPCR, NULL);
}