#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  window; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ xcb_destroy_notify_event_t ;
struct TYPE_10__ {int /*<<< orphan*/  class_instance; int /*<<< orphan*/  class_class; } ;
typedef  TYPE_2__ trayclient ;
struct TYPE_11__ {int /*<<< orphan*/  trayclients; } ;
typedef  TYPE_3__ i3_output ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tailq ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,TYPE_3__**) ; 

__attribute__((used)) static void FUNC7(xcb_destroy_notify_event_t *event) {
    FUNC0("DestroyNotify for window = %08x, event = %08x\n", event->window, event->event);

    i3_output *output;
    trayclient *client = FUNC6(event->window, &output);
    if (!client) {
        FUNC0("WARNING: Could not find corresponding tray window.\n");
        return;
    }

    FUNC0("Removing tray client with window ID %08x\n", event->window);
    FUNC2(output->trayclients, client, tailq);
    FUNC5(client->class_class);
    FUNC5(client->class_instance);
    FUNC1(client);

    /* Trigger an update, we now have more space for the statusline */
    FUNC3();
    FUNC4(false);
}