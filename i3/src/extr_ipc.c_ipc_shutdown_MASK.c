#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  shutdown_reason_t ;
struct TYPE_4__ {int fd; } ;
typedef  TYPE_1__ ipc_client ;

/* Variables and functions */
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  all_clients ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

void FUNC5(shutdown_reason_t reason, int exempt_fd) {
    FUNC3(reason);

    ipc_client *current;
    while (!FUNC0(&all_clients)) {
        current = FUNC1(&all_clients);
        if (current->fd != exempt_fd) {
            FUNC4(current->fd, SHUT_RDWR);
        }
        FUNC2(current, exempt_fd);
    }
}