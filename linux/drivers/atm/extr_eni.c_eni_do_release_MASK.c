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
struct eni_dev {int /*<<< orphan*/  ioaddr; } ;
struct atm_dev {TYPE_1__* phy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop ) (struct atm_dev*) ;} ;

/* Variables and functions */
 struct eni_dev* FUNC0 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atm_dev*) ; 

__attribute__((used)) static void FUNC3(struct atm_dev *dev)
{
	struct eni_dev *ed = FUNC0(dev);

	dev->phy->stop(dev);
	dev->phy = NULL;
	FUNC1(ed->ioaddr);
}