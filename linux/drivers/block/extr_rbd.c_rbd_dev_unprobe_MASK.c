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
struct rbd_image_header {int /*<<< orphan*/  object_prefix; int /*<<< orphan*/  snap_names; int /*<<< orphan*/  snap_sizes; int /*<<< orphan*/  snapc; } ;
struct rbd_device {struct rbd_image_header header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rbd_image_header*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct rbd_device*) ; 

__attribute__((used)) static void FUNC6(struct rbd_device *rbd_dev)
{
	struct rbd_image_header	*header;

	FUNC4(rbd_dev);
	FUNC5(rbd_dev);
	FUNC3(rbd_dev);

	/* Free dynamic fields from the header, then zero it out */

	header = &rbd_dev->header;
	FUNC0(header->snapc);
	FUNC1(header->snap_sizes);
	FUNC1(header->snap_names);
	FUNC1(header->object_prefix);
	FUNC2(header, 0, sizeof (*header));
}