#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int mapped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* croot ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(void) {
    if (croot == NULL)
        return;

    FUNC0("-- BEGIN RENDERING --\n");
    /* Reset map state for all nodes in tree */
    /* TODO: a nicer method to walk all nodes would be good, maybe? */
    FUNC1(croot);
    croot->mapped = true;

    FUNC2(croot, false);

    FUNC3(croot);
    FUNC0("-- END RENDERING --\n");
}