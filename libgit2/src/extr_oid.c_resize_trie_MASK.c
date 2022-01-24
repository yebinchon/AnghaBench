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
typedef  int /*<<< orphan*/  trie_node ;
struct TYPE_3__ {size_t size; int /*<<< orphan*/ * nodes; } ;
typedef  TYPE_1__ git_oid_shorten ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,size_t) ; 

__attribute__((used)) static int FUNC3(git_oid_shorten *self, size_t new_size)
{
	self->nodes = FUNC1(self->nodes, new_size, sizeof(trie_node));
	FUNC0(self->nodes);

	if (new_size > self->size) {
		FUNC2(&self->nodes[self->size], 0x0, (new_size - self->size) * sizeof(trie_node));
	}

	self->size = new_size;
	return 0;
}