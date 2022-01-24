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
struct node {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct node*) ; 
 int /*<<< orphan*/  FUNC2 (struct node*) ; 
 int /*<<< orphan*/  FUNC3 (struct node*) ; 

void FUNC4(struct node *node)
{
	FUNC1(node);		/* no-op, if memoryless node */
	FUNC2(node);
	FUNC3(node);
	FUNC0(&node->dev);
}