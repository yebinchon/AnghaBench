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
struct switch_dev {int dummy; } ;
struct rtl_phyregs {void* duplex; void* speed; void* nway; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX ; 
 int /*<<< orphan*/  NWAY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPEED ; 
 void* FUNC1 (struct switch_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct switch_dev *dev, int port, struct rtl_phyregs *regs)
{
	regs->nway = FUNC1(dev, FUNC0(port, NWAY));
	regs->speed = FUNC1(dev, FUNC0(port, SPEED));
	regs->duplex = FUNC1(dev, FUNC0(port, DUPLEX));
}