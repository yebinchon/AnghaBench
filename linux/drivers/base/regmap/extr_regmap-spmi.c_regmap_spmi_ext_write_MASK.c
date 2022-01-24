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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*,void const*,int,void const*,size_t) ; 

__attribute__((used)) static int FUNC2(void *context, const void *data,
				 size_t count)
{
	FUNC0(count < 2);
	return FUNC1(context, data, 2, data + 2,
					    count - 2);
}