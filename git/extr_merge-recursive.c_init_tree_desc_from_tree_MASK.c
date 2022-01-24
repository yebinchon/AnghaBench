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
struct tree_desc {int dummy; } ;
struct tree {int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tree_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tree*) ; 

__attribute__((used)) static void FUNC2(struct tree_desc *desc, struct tree *tree)
{
	FUNC1(tree);
	FUNC0(desc, tree->buffer, tree->size);
}