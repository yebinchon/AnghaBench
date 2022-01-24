#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
struct TYPE_7__ {TYPE_2__* blocks; } ;
typedef  TYPE_1__ base_t ;
struct TYPE_8__ {int /*<<< orphan*/  size; struct TYPE_8__* next; } ;
typedef  TYPE_2__ base_block_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC3(tsdn_t *tsdn, base_t *base) {
	extent_hooks_t *extent_hooks = FUNC0(base);
	base_block_t *next = base->blocks;
	do {
		base_block_t *block = next;
		next = block->next;
		FUNC2(tsdn, extent_hooks, FUNC1(base), block,
		    block->size);
	} while (next != NULL);
}