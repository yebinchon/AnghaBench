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
struct binder_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct binder_node*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct binder_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct binder_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct binder_node*) ; 

__attribute__((used)) static void FUNC4(struct binder_node *node, int strong, int internal)
{
	bool free_node;

	FUNC2(node);
	free_node = FUNC0(node, strong, internal);
	FUNC3(node);
	if (free_node)
		FUNC1(node);
}