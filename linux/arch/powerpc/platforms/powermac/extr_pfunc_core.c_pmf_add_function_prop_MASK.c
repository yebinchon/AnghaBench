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
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u32 ;
struct pmf_function {char const* name; void** data; unsigned int length; int /*<<< orphan*/  link; void* phandle; void* flags; struct pmf_device* dev; void* driver_data; int /*<<< orphan*/  node; int /*<<< orphan*/  irq_clients; int /*<<< orphan*/  ref; } ;
struct pmf_device {int /*<<< orphan*/  functions; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pmf_function*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pmf_function* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pmf_device*) ; 
 scalar_t__ FUNC7 (struct pmf_function*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct pmf_device *dev, void *driverdata,
				 const char *name, u32 *data,
				 unsigned int length)
{
	int count = 0;
	struct pmf_function *func = NULL;

	FUNC0("pmf: Adding functions for platform-do-%s\n", name);

	while (length >= 12) {
		/* Allocate a structure */
		func = FUNC4(sizeof(*func), GFP_KERNEL);
		if (func == NULL)
			goto bail;
		FUNC3(&func->ref);
		FUNC1(&func->irq_clients);
		func->node = dev->node;
		func->driver_data = driverdata;
		func->name = name;
		func->phandle = data[0];
		func->flags = data[1];
		data += 2;
		length -= 8;
		func->data = data;
		func->length = length;
		func->dev = dev;
		FUNC0("pmf: idx %d: flags=%08x, phandle=%08x "
		    " %d bytes remaining, parsing...\n",
		    count+1, func->flags, func->phandle, length);
		if (FUNC7(func, NULL, NULL, NULL)) {
			FUNC2(func);
			goto bail;
		}
		length -= func->length;
		data = (u32 *)(((u8 *)data) + func->length);
		FUNC5(&func->link, &dev->functions);
		FUNC6(dev);
		count++;
	}
 bail:
	FUNC0("pmf: Added %d functions\n", count);

	return count;
}