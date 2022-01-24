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
struct Ignore_Event {int sequence; int response_type; int /*<<< orphan*/  added; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct Ignore_Event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ignore_events ; 
 struct Ignore_Event* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(const int sequence, const int response_type) {
    struct Ignore_Event *event = FUNC1(sizeof(struct Ignore_Event));

    event->sequence = sequence;
    event->response_type = response_type;
    event->added = FUNC2(NULL);

    FUNC0(&ignore_events, event, ignore_events);
}