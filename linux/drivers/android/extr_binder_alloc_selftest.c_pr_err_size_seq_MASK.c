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
 int BUFFER_NUM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(size_t *sizes, int *seq)
{
	int i;

	FUNC1("alloc sizes: ");
	for (i = 0; i < BUFFER_NUM; i++)
		FUNC0("[%zu]", sizes[i]);
	FUNC0("\n");
	FUNC1("free seq: ");
	for (i = 0; i < BUFFER_NUM; i++)
		FUNC0("[%d]", seq[i]);
	FUNC0("\n");
}