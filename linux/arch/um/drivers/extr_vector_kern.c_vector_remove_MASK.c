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
struct vector_private {int /*<<< orphan*/ * fds; } ;
struct vector_device {int /*<<< orphan*/  pdev; struct net_device* dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 struct vector_device* FUNC0 (int) ; 
 struct vector_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(int n, char **error_out)
{
	struct vector_device *vec_d;
	struct net_device *dev;
	struct vector_private *vp;

	vec_d = FUNC0(n);
	if (vec_d == NULL)
		return -ENODEV;
	dev = vec_d->dev;
	vp = FUNC1(dev);
	if (vp->fds != NULL)
		return -EBUSY;
	FUNC3(dev);
	FUNC2(&vec_d->pdev);
	return 0;
}