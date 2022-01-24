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
typedef  int /*<<< orphan*/  u16 ;
struct slim_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct slim_device*,int /*<<< orphan*/ ,size_t,void*) ; 

__attribute__((used)) static int FUNC1(void *context, const void *reg, size_t reg_size,
			       void *val, size_t val_size)
{
	struct slim_device *sdev = context;

	return FUNC0(sdev, *(u16 *)reg, val_size, val);
}