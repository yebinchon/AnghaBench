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
struct unix_abstract {scalar_t__ refcount; int /*<<< orphan*/  links; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct unix_abstract*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unix_abstract_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct unix_abstract *name) {
    FUNC2(&unix_abstract_lock);
    if (--name->refcount == 0) {
        FUNC1(&name->links);
        FUNC0(name);
    }
    FUNC3(&unix_abstract_lock);
}