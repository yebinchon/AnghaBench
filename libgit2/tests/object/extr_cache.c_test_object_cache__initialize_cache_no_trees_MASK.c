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
 int /*<<< orphan*/  GIT_OBJECT_TREE ; 
 scalar_t__ cache_limit ; 
 int /*<<< orphan*/ * g_repo ; 
 int /*<<< orphan*/  object_type ; 

void FUNC0(void)
{
	g_repo = NULL;
	object_type = GIT_OBJECT_TREE;
	cache_limit = 0;
}