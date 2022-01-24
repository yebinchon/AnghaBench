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
struct drbd_device {int dummy; } ;
typedef  int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void FUNC3(struct drbd_device *device, sector_t size)
{
	char ppb[10];
	FUNC0(device, size);
	FUNC1(device, "size = %s (%llu KB)\n",
		FUNC2(ppb, size>>1), (unsigned long long)size>>1);
}