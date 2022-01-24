#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  threadname ;
struct statbuf {int mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct sigaction_ {scalar_t__ handler; } ;
struct fd {TYPE_2__* mount; } ;
struct TYPE_9__ {char* comm; int did_exec; TYPE_3__* sighand; int /*<<< orphan*/  files; int /*<<< orphan*/  general_lock; int /*<<< orphan*/  egid; int /*<<< orphan*/  sgid; int /*<<< orphan*/  euid; int /*<<< orphan*/  suid; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; scalar_t__ altstack; struct sigaction_* action; } ;
struct TYPE_7__ {TYPE_1__* fs; } ;
struct TYPE_6__ {int (* fstat ) (struct fd*,struct statbuf*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fd*) ; 
 int NUM_SIGS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC1 (struct fd*) ; 
 scalar_t__ SIG_DFL_ ; 
 scalar_t__ SIG_IGN_ ; 
 int S_ISGID ; 
 int S_ISUID ; 
 int _EACCES ; 
 int _ENOEXEC ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC2 (struct fd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct fd*,char const*,char const*,char const*) ; 
 struct fd* FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (struct fd*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 char* FUNC11 (char const*,char) ; 
 int FUNC12 (struct fd*,struct statbuf*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 

int FUNC15(const char *file, const char *argv, const char *envp) {
    struct fd *fd = FUNC5(file, O_RDONLY, 0);
    if (FUNC0(fd))
        return FUNC1(fd);

    struct statbuf stat;
    int err = fd->mount->fs->fstat(fd, &stat);
    if (err < 0) {
        FUNC2(fd);
        return err;
    }

    // if nobody has permission to execute, it should be safe to not execute
    if (!(stat.mode & 0111)) {
        FUNC2(fd);
        return _EACCES;
    }

    err = FUNC4(fd, file, argv, envp);
    if (err == _ENOEXEC)
        err = FUNC9(fd, file, argv, envp);
    FUNC2(fd);
    if (err < 0)
        return err;

    // setuid/setgid
    if (stat.mode & S_ISUID) {
        current->suid = current->euid;
        current->euid = stat.uid;
    }
    if (stat.mode & S_ISGID) {
        current->sgid = current->egid;
        current->egid = stat.gid;
    }

    // save current->comm
    FUNC6(&current->general_lock);
    const char *basename = FUNC11(file, '/');
    if (basename == NULL)
        basename = file;
    else
        basename++;
    FUNC10(current->comm, basename, sizeof(current->comm));
    FUNC13(&current->general_lock);

    // set the thread name
    char threadname[16];
    FUNC10(threadname, current->comm, sizeof(threadname)-1);
    threadname[15] = '\0';
#if __APPLE__
    pthread_setname_np(threadname);
#else
    FUNC8(FUNC7(), threadname);
#endif

    // cloexec
    // consider putting this in fd.c?
    FUNC3(current->files);

    // reset signal handlers
    FUNC6(&current->sighand->lock);
    for (int sig = 0; sig < NUM_SIGS; sig++) {
        struct sigaction_ *action = &current->sighand->action[sig];
        if (action->handler != SIG_IGN_)
            action->handler = SIG_DFL_;
    }
    current->sighand->altstack = 0;
    FUNC13(&current->sighand->lock);

    current->did_exec = true;
    FUNC14(current);
    return 0;
}