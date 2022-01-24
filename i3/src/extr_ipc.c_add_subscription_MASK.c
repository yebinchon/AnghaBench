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
typedef  scalar_t__ ylength ;
struct TYPE_2__ {int num_events; int /*<<< orphan*/ * events; } ;
typedef  TYPE_1__ ipc_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(void *extra, const unsigned char *s,
                            ylength len) {
    ipc_client *client = extra;

    FUNC0("should add subscription to extra %p, sub %.*s\n", client, (int)len, s);
    int event = client->num_events;

    client->num_events++;
    client->events = FUNC3(client->events, client->num_events * sizeof(char *));
    /* We copy the string because it is not null-terminated and strndup()
     * is missing on some BSD systems */
    client->events[event] = FUNC2(len + 1, 1);
    FUNC1(client->events[event], s, len);

    FUNC0("client is now subscribed to:\n");
    for (int i = 0; i < client->num_events; i++) {
        FUNC0("event %s\n", client->events[i]);
    }
    FUNC0("(done)\n");

    return 1;
}