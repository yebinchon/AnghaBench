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
typedef  int /*<<< orphan*/  xcb_get_property_reply_t ;
typedef  scalar_t__ time_t ;
struct Startup_Sequence {scalar_t__ delete_at; char* workspace; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  i3Window ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Startup_Sequence*) ; 
 struct Startup_Sequence* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

char *FUNC4(i3Window *cwindow, xcb_get_property_reply_t *startup_id_reply) {
    struct Startup_Sequence *sequence = FUNC2(cwindow, startup_id_reply, false);
    if (sequence == NULL)
        return NULL;

    /* If the startup sequence's time span has elapsed, delete it. */
    time_t current_time = FUNC3(NULL);
    if (sequence->delete_at > 0 && current_time > sequence->delete_at) {
        FUNC0("Deleting expired startup sequence %s\n", sequence->id);
        FUNC1(sequence);
        return NULL;
    }

    return sequence->workspace;
}