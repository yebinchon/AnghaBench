#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  m; } ;
struct task {int pending; int blocked; int waiting; TYPE_1__* sighand; TYPE_2__ waiting_cond_lock; TYPE_2__* waiting_lock; int /*<<< orphan*/ * waiting_cond; int /*<<< orphan*/  thread; int /*<<< orphan*/  queue; } ;
struct siginfo_ {int sig; } ;
struct sigqueue {int /*<<< orphan*/  queue; struct siginfo_ info; } ;
struct TYPE_4__ {TYPE_2__ lock; } ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 struct task* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct sigqueue* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int) ; 
 scalar_t__ FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC12(struct task *task, int sig, struct siginfo_ info) {
    if (FUNC10(task->pending, sig))
        return;

    FUNC9(&task->pending, sig);
    struct sigqueue *sigqueue = FUNC2(sizeof(struct sigqueue));
    sigqueue->info = info;
    sigqueue->info.sig = sig;
    FUNC0(&task->queue, &sigqueue->queue);

    if (FUNC10(task->blocked & ~task->waiting, sig) && FUNC8(sig))
        return;

    if (task != current) {
        FUNC5(task->thread, SIGUSR1);

        // wake up any pthread condition waiters
        // actual madness, I hope to god it's correct
        // must release the sighand lock while going insane, to avoid a deadlock
        FUNC11(&task->sighand->lock);
retry:
        FUNC1(&task->waiting_cond_lock);
        if (task->waiting_cond != NULL) {
            bool mine = false;
            if (FUNC6(&task->waiting_lock->m) == EBUSY) {
                if (FUNC4(task->waiting_lock->owner, FUNC7()))
                    mine = true;
                if (!mine) {
                    FUNC11(&task->waiting_cond_lock);
                    goto retry;
                }
            }
            FUNC3(task->waiting_cond);
            if (!mine)
                FUNC11(task->waiting_lock);
        }
        FUNC11(&task->waiting_cond_lock);
        FUNC1(&task->sighand->lock);
    }
}