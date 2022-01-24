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
struct Startup_Sequence {int /*<<< orphan*/  workspace; int /*<<< orphan*/  id; int /*<<< orphan*/  context; scalar_t__ delete_at; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,long long,long long) ; 
 int /*<<< orphan*/  FUNC1 (struct Startup_Sequence*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct Startup_Sequence*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sequences ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  startup_sequences ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct Startup_Sequence *sequence) {
    FUNC3(sequence != NULL);
    FUNC0("Deleting startup sequence %s, delete_at = %lld, current_time = %lld\n",
         sequence->id, (long long)sequence->delete_at, (long long)FUNC6(NULL));

    /* Unref the context, will be free()d */
    FUNC5(sequence->context);

    /* Delete our internal sequence */
    FUNC2(&startup_sequences, sequence, sequences);

    FUNC4(sequence->id);
    FUNC4(sequence->workspace);
    FUNC1(sequence);
}