#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t picoIndex_t ;
struct TYPE_9__ {size_t* data; } ;
struct TYPE_10__ {TYPE_2__* data; } ;
struct TYPE_7__ {TYPE_3__ indices; TYPE_4__ tree; int /*<<< orphan*/  lessData; scalar_t__ (* lessFunc ) (int /*<<< orphan*/ ,size_t,size_t) ;} ;
typedef  TYPE_1__ UniqueIndices ;
struct TYPE_8__ {scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_2__ BinaryTreeNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,size_t,size_t) ; 

picoIndex_t FUNC5(UniqueIndices* self, picoIndex_t value) {
	picoIndex_t index = 0;

	for (;; )
	{
		if (self->lessFunc(self->lessData, value, self->indices.data[index])) {
			BinaryTreeNode* node = self->tree.data + index;
			if (node->left != 0) {
				index = node->left;
				continue;
			}
			else
			{
				node->left = (picoIndex_t)FUNC1(&self->tree);
				FUNC0(&self->tree);
				FUNC2(&self->indices, value);
				return node->left;
			}
		}
		if (self->lessFunc(self->lessData, self->indices.data[index], value)) {
			BinaryTreeNode* node = self->tree.data + index;
			if (node->right != 0) {
				index = node->right;
				continue;
			}
			else
			{
				node->right = (picoIndex_t)FUNC1(&self->tree);
				FUNC0(&self->tree);
				FUNC2(&self->indices, value);
				return node->right;
			}
		}

		return index;
	}
}