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
struct drbd_device {scalar_t__ rs_last_bcast; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool FUNC1(struct drbd_device *device)
{
	return FUNC0(jiffies, device->rs_last_bcast + 2*HZ);
}