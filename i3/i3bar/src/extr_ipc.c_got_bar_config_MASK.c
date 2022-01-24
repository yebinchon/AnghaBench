#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  command; int /*<<< orphan*/  colors; int /*<<< orphan*/  fontname; int /*<<< orphan*/  disable_ws; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  I3_IPC_MESSAGE_TYPE_GET_OUTPUTS ; 
 int /*<<< orphan*/  I3_IPC_MESSAGE_TYPE_GET_WORKSPACES ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(char *reply) {
    FUNC0("Received bar config \"%s\"\n", reply);
    /* We initiate the main function by requesting infos about the outputs and
     * workspaces. Everything else (creating the bars, showing the right workspace-
     * buttons and more) is taken care of by the event-drivenness of the code */
    FUNC2(I3_IPC_MESSAGE_TYPE_GET_OUTPUTS, NULL);

    FUNC1(&(config.colors));
    FUNC5(reply);

    /* Now we can actually use 'config', so let's subscribe to the appropriate
     * events and request the workspaces if necessary. */
    FUNC7();
    if (!config.disable_ws)
        FUNC2(I3_IPC_MESSAGE_TYPE_GET_WORKSPACES, NULL);

    /* Initialize the rest of XCB */
    FUNC4(config.fontname);

    /* Resolve color strings to colorpixels and save them, then free the strings. */
    FUNC3(&(config.colors));

    FUNC6(config.command);
}