#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* ran_assignments; int /*<<< orphan*/  name; struct TYPE_4__* class_instance; struct TYPE_4__* class_class; } ;
typedef  TYPE_1__ i3Window ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(i3Window *win) {
    FUNC0(win->class_class);
    FUNC0(win->class_instance);
    FUNC1(win->name);
    FUNC0(win->ran_assignments);
    FUNC0(win);
}