
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int owner; int m; } ;
struct task {int pending; int blocked; int waiting; TYPE_1__* sighand; TYPE_2__ waiting_cond_lock; TYPE_2__* waiting_lock; int * waiting_cond; int thread; int queue; } ;
struct siginfo_ {int sig; } ;
struct sigqueue {int queue; struct siginfo_ info; } ;
struct TYPE_4__ {TYPE_2__ lock; } ;


 scalar_t__ EBUSY ;
 int SIGUSR1 ;
 struct task* current ;
 int list_add_tail (int *,int *) ;
 int lock (TYPE_2__*) ;
 struct sigqueue* malloc (int) ;
 int notify (int *) ;
 scalar_t__ pthread_equal (int ,int ) ;
 int pthread_kill (int ,int ) ;
 scalar_t__ pthread_mutex_trylock (int *) ;
 int pthread_self () ;
 scalar_t__ signal_is_blockable (int) ;
 int sigset_add (int*,int) ;
 scalar_t__ sigset_has (int,int) ;
 int unlock (TYPE_2__*) ;

__attribute__((used)) static void deliver_signal_unlocked(struct task *task, int sig, struct siginfo_ info) {
    if (sigset_has(task->pending, sig))
        return;

    sigset_add(&task->pending, sig);
    struct sigqueue *sigqueue = malloc(sizeof(struct sigqueue));
    sigqueue->info = info;
    sigqueue->info.sig = sig;
    list_add_tail(&task->queue, &sigqueue->queue);

    if (sigset_has(task->blocked & ~task->waiting, sig) && signal_is_blockable(sig))
        return;

    if (task != current) {
        pthread_kill(task->thread, SIGUSR1);




        unlock(&task->sighand->lock);
retry:
        lock(&task->waiting_cond_lock);
        if (task->waiting_cond != ((void*)0)) {
            bool mine = 0;
            if (pthread_mutex_trylock(&task->waiting_lock->m) == EBUSY) {
                if (pthread_equal(task->waiting_lock->owner, pthread_self()))
                    mine = 1;
                if (!mine) {
                    unlock(&task->waiting_cond_lock);
                    goto retry;
                }
            }
            notify(task->waiting_cond);
            if (!mine)
                unlock(task->waiting_lock);
        }
        unlock(&task->waiting_cond_lock);
        lock(&task->sighand->lock);
    }
}
