#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sighand {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  blocked; struct sighand* sighand; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINFO_NIL ; 
 scalar_t__ SIGNAL_IGNORE ; 
 int SIGTTIN_ ; 
 int SIGTTOU_ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sighand*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

bool FUNC6(int sig) {
    FUNC0(sig == SIGTTIN_ || sig == SIGTTOU_);

    struct sighand *sighand = current->sighand;
    FUNC2(&sighand->lock);
    bool can_send = FUNC3(sighand, sig) != SIGNAL_IGNORE &&
        !FUNC4(current->blocked, sig);
    if (can_send)
        FUNC1(current, sig, SIGINFO_NIL);
    FUNC5(&sighand->lock);
    return can_send;
}