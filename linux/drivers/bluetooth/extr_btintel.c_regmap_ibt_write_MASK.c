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

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int FUNC1 (void*,void const*,int,void const*,size_t) ; 

__attribute__((used)) static int FUNC2(void *context, const void *data, size_t count)
{
	/* data contains register+value, since we only support 32bit addr,
	 * minimum data size is 4 bytes.
	 */
	if (FUNC0(count < 4, "Invalid register access"))
		return -EINVAL;

	return FUNC1(context, data, 4, data + 4, count - 4);
}