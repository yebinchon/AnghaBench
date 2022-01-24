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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  I3_IPC_MESSAGE_TYPE_COMMAND ; 
 int /*<<< orphan*/  I3_IPC_REPLY_TYPE_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipcfd ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(void) {
    const char *disablecmd = "debuglog off; shmlog off";
    if (FUNC3(ipcfd, FUNC4(disablecmd),
                         I3_IPC_MESSAGE_TYPE_COMMAND, (uint8_t *)disablecmd) != 0)
        FUNC0(EXIT_FAILURE, "IPC send");

    /* Ensure the command was sent by waiting for the reply: */
    uint32_t reply_length = 0;
    uint8_t *reply = NULL;
    if (FUNC2(ipcfd, I3_IPC_REPLY_TYPE_COMMAND,
                         &reply_length, &reply) != 0) {
        FUNC0(EXIT_FAILURE, "IPC recv");
    }
    FUNC1(reply);
}