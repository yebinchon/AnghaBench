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
struct ssif_addr_info {int /*<<< orphan*/  adapter_name; int /*<<< orphan*/  binfo; int /*<<< orphan*/  added_client; } ;
struct device {int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 int /*<<< orphan*/  i2c_adapter_type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *adev, void *opaque)
{
	struct ssif_addr_info *addr_info = opaque;

	if (adev->type != &i2c_adapter_type)
		return 0;

	addr_info->added_client = FUNC0(FUNC1(adev),
						 &addr_info->binfo);

	if (!addr_info->adapter_name)
		return 1; /* Only try the first I2C adapter by default. */
	return 0;
}