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
struct agp_memory {int dummy; } ;
struct agp_file_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 struct agp_memory* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct agp_memory*) ; 

int FUNC3(struct agp_file_private *priv, int arg)
{
	struct agp_memory *memory;

	FUNC0("");
	memory = FUNC1(arg);

	if (memory == NULL)
		return -EINVAL;

	FUNC2(memory);
	return 0;
}