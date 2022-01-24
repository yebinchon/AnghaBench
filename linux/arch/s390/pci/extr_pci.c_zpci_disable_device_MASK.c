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
struct zpci_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct zpci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct zpci_dev*) ; 

int FUNC2(struct zpci_dev *zdev)
{
	FUNC1(zdev);
	return FUNC0(zdev);
}