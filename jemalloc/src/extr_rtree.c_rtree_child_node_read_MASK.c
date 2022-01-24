#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  rtree_t ;
struct TYPE_8__ {int /*<<< orphan*/  child; } ;
typedef  TYPE_1__ rtree_node_elm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static rtree_node_elm_t *
FUNC5(tsdn_t *tsdn, rtree_t *rtree, rtree_node_elm_t *elm,
    unsigned level, bool dependent) {
	rtree_node_elm_t *node;

	node = FUNC1(elm, dependent);
	if (!dependent && FUNC4(!FUNC3(node))) {
		node = FUNC2(tsdn, rtree, level + 1, &elm->child);
	}
	FUNC0(!dependent || node != NULL);
	return node;
}