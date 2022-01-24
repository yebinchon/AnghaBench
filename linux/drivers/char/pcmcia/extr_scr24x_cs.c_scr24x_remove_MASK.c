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
struct scr24x_dev {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/ * dev; int /*<<< orphan*/  devno; int /*<<< orphan*/  c_dev; } ;
struct pcmcia_device {scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  scr24x_class ; 
 int /*<<< orphan*/  scr24x_delete ; 
 int /*<<< orphan*/  scr24x_devt ; 
 int /*<<< orphan*/  scr24x_minors ; 

__attribute__((used)) static void FUNC9(struct pcmcia_device *link)
{
	struct scr24x_dev *dev = (struct scr24x_dev *)link->priv;

	FUNC4(scr24x_class, FUNC1(FUNC0(scr24x_devt), dev->devno));
	FUNC6(&dev->lock);
	FUNC8(link);
	FUNC2(&dev->c_dev);
	FUNC3(dev->devno, scr24x_minors);
	dev->dev = NULL;
	FUNC7(&dev->lock);

	FUNC5(&dev->refcnt, scr24x_delete);
}