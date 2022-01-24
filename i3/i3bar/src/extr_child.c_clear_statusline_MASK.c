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
struct statusline_head {int dummy; } ;
struct status_block {int /*<<< orphan*/  border; int /*<<< orphan*/  background; int /*<<< orphan*/  min_width_str; int /*<<< orphan*/  instance; int /*<<< orphan*/  name; int /*<<< orphan*/  color; int /*<<< orphan*/  short_text; int /*<<< orphan*/  full_text; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct statusline_head*) ; 
 struct status_block* FUNC3 (struct statusline_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct statusline_head*,struct status_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blocks ; 
 int /*<<< orphan*/  FUNC5 (struct status_block*) ; 

__attribute__((used)) static void FUNC6(struct statusline_head *head, bool free_resources) {
    struct status_block *first;
    while (!FUNC2(head)) {
        first = FUNC3(head);
        if (free_resources) {
            FUNC1(first->full_text);
            FUNC1(first->short_text);
            FUNC0(first->color);
            FUNC0(first->name);
            FUNC0(first->instance);
            FUNC0(first->min_width_str);
            FUNC0(first->background);
            FUNC0(first->border);
        }

        FUNC4(head, first, blocks);
        FUNC5(first);
    }
}