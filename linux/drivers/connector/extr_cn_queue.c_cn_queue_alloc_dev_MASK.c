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
struct sock {int dummy; } ;
struct cn_queue_dev {struct sock* nls; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue_list; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cn_queue_dev* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct cn_queue_dev *FUNC5(const char *name, struct sock *nls)
{
	struct cn_queue_dev *dev;

	dev = FUNC2(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return NULL;

	FUNC3(dev->name, sizeof(dev->name), "%s", name);
	FUNC1(&dev->refcnt, 0);
	FUNC0(&dev->queue_list);
	FUNC4(&dev->queue_lock);

	dev->nls = nls;

	return dev;
}