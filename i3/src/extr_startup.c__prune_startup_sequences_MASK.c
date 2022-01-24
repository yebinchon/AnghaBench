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
typedef  scalar_t__ time_t ;
struct Startup_Sequence {scalar_t__ delete_at; } ;

/* Variables and functions */
 struct Startup_Sequence* FUNC0 (int /*<<< orphan*/ *) ; 
 struct Startup_Sequence* FUNC1 (int /*<<< orphan*/ *) ; 
 struct Startup_Sequence* FUNC2 (struct Startup_Sequence*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sequences ; 
 int /*<<< orphan*/  FUNC3 (struct Startup_Sequence*) ; 
 int /*<<< orphan*/  startup_sequences ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void) {
    time_t current_time = FUNC4(NULL);
    int active_sequences = 0;

    /* Traverse the list and delete everything which was marked for deletion 30
     * seconds ago or earlier. */
    struct Startup_Sequence *current, *next;
    for (next = FUNC1(&startup_sequences);
         next != FUNC0(&startup_sequences);) {
        current = next;
        next = FUNC2(next, sequences);

        if (current->delete_at == 0) {
            active_sequences++;
            continue;
        }

        if (current_time <= current->delete_at)
            continue;

        FUNC3(current);
    }

    return active_sequences;
}