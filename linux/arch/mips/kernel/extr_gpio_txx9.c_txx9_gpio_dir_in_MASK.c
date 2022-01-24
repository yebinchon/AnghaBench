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
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  txx9_gpio_lock ; 
 TYPE_1__* txx9_pioptr ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned int offset)
{
	unsigned long flags;
	FUNC3(&txx9_gpio_lock, flags);
	FUNC1(FUNC0(&txx9_pioptr->dir) & ~(1 << offset),
		     &txx9_pioptr->dir);
	FUNC2();
	FUNC4(&txx9_gpio_lock, flags);
	return 0;
}