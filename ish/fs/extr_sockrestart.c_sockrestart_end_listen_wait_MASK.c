#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fd {int /*<<< orphan*/ * ops; } ;
struct TYPE_3__ {scalar_t__ count; int /*<<< orphan*/  listen; } ;
struct TYPE_4__ {TYPE_1__ sockrestart; } ;

/* Variables and functions */
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  socket_fdops ; 
 int /*<<< orphan*/  sockrestart_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct fd *sock) {
    if (sock->ops != &socket_fdops)
        return;
    FUNC1(&sockrestart_lock);
    current->sockrestart.count--;
    if (current->sockrestart.count == 0)
        FUNC0(&current->sockrestart.listen);
    FUNC2(&sockrestart_lock);
}