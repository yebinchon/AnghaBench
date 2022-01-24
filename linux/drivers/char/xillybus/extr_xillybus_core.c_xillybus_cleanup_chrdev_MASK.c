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
struct xilly_endpoint {int lowest_minor; int num_channels; int /*<<< orphan*/  dev; int /*<<< orphan*/  major; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  xillybus_class ; 

__attribute__((used)) static void FUNC5(struct xilly_endpoint *endpoint)
{
	int minor;

	for (minor = endpoint->lowest_minor;
	     minor < (endpoint->lowest_minor + endpoint->num_channels);
	     minor++)
		FUNC3(xillybus_class, FUNC0(endpoint->major, minor));
	FUNC1(&endpoint->cdev);
	FUNC4(FUNC0(endpoint->major,
				       endpoint->lowest_minor),
				 endpoint->num_channels);

	FUNC2(endpoint->dev, "Removed %d device files.\n",
		 endpoint->num_channels);
}