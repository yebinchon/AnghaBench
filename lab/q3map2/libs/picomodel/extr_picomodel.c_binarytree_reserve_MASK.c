#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  last; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  BinaryTreeNode ;
typedef  TYPE_1__ BinaryTree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 

void FUNC1(BinaryTree* self, size_t size) {
	self->data = self->last = FUNC0(size, sizeof(BinaryTreeNode));
}