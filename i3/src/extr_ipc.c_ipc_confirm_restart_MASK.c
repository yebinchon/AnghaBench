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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ ipc_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I3_IPC_REPLY_TYPE_COMMAND ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

void FUNC4(ipc_client *client) {
    FUNC0("ipc_confirm_restart(fd %d)\n", client->fd);
    static const char *reply = "[{\"success\":true}]";
    FUNC2(
        client, FUNC3(reply), I3_IPC_REPLY_TYPE_COMMAND,
        (const uint8_t *)reply);
    FUNC1(client);
}