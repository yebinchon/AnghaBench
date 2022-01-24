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
struct agp_memory {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct agp_memory*) ; 
 int /*<<< orphan*/  FUNC2 (struct agp_memory*) ; 

void FUNC3(struct agp_memory *curr)
{
	FUNC1(curr);
	FUNC0(curr->key);
	FUNC2(curr);
}