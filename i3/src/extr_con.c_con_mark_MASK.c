#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char const* name; } ;
typedef  TYPE_1__ mark_t ;
typedef  scalar_t__ mark_mode_t ;
struct TYPE_10__ {int mark_changed; int /*<<< orphan*/  marks_head; } ;
typedef  TYPE_2__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ MM_REPLACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  marks ; 
 TYPE_1__* FUNC7 (int,int) ; 
 char const* FUNC8 (char const*) ; 

void FUNC9(Con *con, const char *mark, mark_mode_t mode) {
    FUNC4(con != NULL);
    FUNC0("Setting mark \"%s\" on con = %p.\n", mark, con);

    FUNC5(NULL, mark);
    if (mode == MM_REPLACE) {
        FUNC0("Removing all existing marks on con = %p.\n", con);

        mark_t *current;
        while (!FUNC1(&(con->marks_head))) {
            current = FUNC2(&(con->marks_head));
            FUNC5(con, current->name);
        }
    }

    mark_t *new = FUNC7(1, sizeof(mark_t));
    new->name = FUNC8(mark);
    FUNC3(&(con->marks_head), new, marks);
    FUNC6("mark", con);

    con->mark_changed = true;
}