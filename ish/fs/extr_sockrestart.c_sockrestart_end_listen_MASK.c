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
struct TYPE_2__ {int /*<<< orphan*/  listen; } ;
struct fd {TYPE_1__ sockrestart; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  socket_fdops ; 
 int /*<<< orphan*/  sockrestart_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct fd *sock) {
    if (sock->ops != &socket_fdops)
        return;
    FUNC1(&sockrestart_lock);
    FUNC0(&sock->sockrestart.listen);
    FUNC2(&sockrestart_lock);
}