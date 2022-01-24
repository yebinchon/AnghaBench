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
struct uml_net_private {int fd; int /*<<< orphan*/  list; int /*<<< orphan*/  user; int /*<<< orphan*/  (* close ) (int,int /*<<< orphan*/ *) ;} ;
struct net_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct uml_net_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  opened_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct uml_net_private *lp = FUNC1(dev);

	FUNC2(dev);

	FUNC6(dev->irq, dev);
	if (lp->close != NULL)
		(*lp->close)(lp->fd, &lp->user);
	lp->fd = -1;

	FUNC3(&opened_lock);
	FUNC0(&lp->list);
	FUNC4(&opened_lock);

	return 0;
}