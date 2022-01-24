#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ orientation_t ;
typedef  scalar_t__ direction_t ;
struct TYPE_9__ {scalar_t__ type; scalar_t__ layout; struct TYPE_9__* parent; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 scalar_t__ CT_FLOATING_CON ; 
 scalar_t__ CT_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ D_LEFT ; 
 scalar_t__ D_UP ; 
 scalar_t__ L_STACKED ; 
 scalar_t__ L_TABBED ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ const FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  nodes ; 
 int /*<<< orphan*/  nodes_head ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

bool FUNC5(Con **current, Con **other, direction_t direction, bool both_sides) {
    FUNC0("Find two participants for resizing container=%p in direction=%i\n", other, direction);
    Con *first = *current;
    Con *second = NULL;
    if (first == NULL) {
        FUNC0("Current container is NULL, aborting.\n");
        return false;
    }

    /* Go up in the tree and search for a container to resize */
    const orientation_t search_orientation = FUNC4(direction);
    const bool dir_backwards = (direction == D_UP || direction == D_LEFT);
    while (first->type != CT_WORKSPACE &&
           first->type != CT_FLOATING_CON &&
           second == NULL) {
        /* get the appropriate first container with the matching
         * orientation (skip stacked/tabbed cons) */
        if ((FUNC3(first->parent) != search_orientation) ||
            (first->parent->layout == L_STACKED) ||
            (first->parent->layout == L_TABBED)) {
            first = first->parent;
            continue;
        }

        /* get the counterpart for this resizement */
        if (dir_backwards) {
            second = FUNC2(first, nodes_head, nodes);
            if (second == NULL && both_sides == true) {
                second = FUNC1(first, nodes);
            }
        } else {
            second = FUNC1(first, nodes);
            if (second == NULL && both_sides == true) {
                second = FUNC2(first, nodes_head, nodes);
            }
        }

        if (second == NULL) {
            FUNC0("No second container in this direction found, trying to look further up in the tree...\n");
            first = first->parent;
        }
    }

    FUNC0("Found participants: first=%p and second=%p.\n", first, second);
    *current = first;
    *other = second;
    if (first == NULL || second == NULL) {
        FUNC0("Could not find two participants for this resize request.\n");
        return false;
    }

    return true;
}