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

/* Variables and functions */
 unsigned long FDT_ERR_NOTFOUND ; 
 int /*<<< orphan*/ * FUNC0 (unsigned long,char*,int*) ; 
 unsigned long FUNC1 () ; 
 unsigned long FUNC2 (unsigned long,char*) ; 

__attribute__((used)) static const u8 *FUNC3(unsigned int index)
{
	unsigned long root, chosen;
	int size;
	const u8 *vec5;

	root = FUNC1();
	chosen = FUNC2(root, "chosen");
	if (chosen == -FDT_ERR_NOTFOUND)
		return NULL;

	vec5 = FUNC0(chosen, "ibm,architecture-vec-5", &size);
	if (!vec5)
		return NULL;

	if (size <= index)
		return NULL;

	return vec5 + index;
}