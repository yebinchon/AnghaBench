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
struct serdev_device {int dummy; } ;
struct btmtkuart_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btmtkuart_dev*) ; 
 struct btmtkuart_dev* FUNC1 (struct serdev_device*) ; 

__attribute__((used)) static void FUNC2(struct serdev_device *serdev)
{
	struct btmtkuart_dev *bdev = FUNC1(serdev);

	FUNC0(bdev);
}