
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int threadname ;
struct statbuf {int mode; int gid; int uid; } ;
struct sigaction_ {scalar_t__ handler; } ;
struct fd {TYPE_2__* mount; } ;
struct TYPE_9__ {char* comm; int did_exec; TYPE_3__* sighand; int files; int general_lock; int egid; int sgid; int euid; int suid; } ;
struct TYPE_8__ {int lock; scalar_t__ altstack; struct sigaction_* action; } ;
struct TYPE_7__ {TYPE_1__* fs; } ;
struct TYPE_6__ {int (* fstat ) (struct fd*,struct statbuf*) ;} ;


 scalar_t__ IS_ERR (struct fd*) ;
 int NUM_SIGS ;
 int O_RDONLY ;
 int PTR_ERR (struct fd*) ;
 scalar_t__ SIG_DFL_ ;
 scalar_t__ SIG_IGN_ ;
 int S_ISGID ;
 int S_ISUID ;
 int _EACCES ;
 int _ENOEXEC ;
 TYPE_4__* current ;
 int fd_close (struct fd*) ;
 int fdtable_do_cloexec (int ) ;
 int format_exec (struct fd*,char const*,char const*,char const*) ;
 struct fd* generic_open (char const*,int ,int ) ;
 int lock (int *) ;
 int pthread_self () ;
 int pthread_setname_np (char*,...) ;
 int shebang_exec (struct fd*,char const*,char const*,char const*) ;
 int strncpy (char*,char const*,int) ;
 char* strrchr (char const*,char) ;
 int stub1 (struct fd*,struct statbuf*) ;
 int unlock (int *) ;
 int vfork_notify (TYPE_4__*) ;

int sys_execve(const char *file, const char *argv, const char *envp) {
    struct fd *fd = generic_open(file, O_RDONLY, 0);
    if (IS_ERR(fd))
        return PTR_ERR(fd);

    struct statbuf stat;
    int err = fd->mount->fs->fstat(fd, &stat);
    if (err < 0) {
        fd_close(fd);
        return err;
    }


    if (!(stat.mode & 0111)) {
        fd_close(fd);
        return _EACCES;
    }

    err = format_exec(fd, file, argv, envp);
    if (err == _ENOEXEC)
        err = shebang_exec(fd, file, argv, envp);
    fd_close(fd);
    if (err < 0)
        return err;


    if (stat.mode & S_ISUID) {
        current->suid = current->euid;
        current->euid = stat.uid;
    }
    if (stat.mode & S_ISGID) {
        current->sgid = current->egid;
        current->egid = stat.gid;
    }


    lock(&current->general_lock);
    const char *basename = strrchr(file, '/');
    if (basename == ((void*)0))
        basename = file;
    else
        basename++;
    strncpy(current->comm, basename, sizeof(current->comm));
    unlock(&current->general_lock);


    char threadname[16];
    strncpy(threadname, current->comm, sizeof(threadname)-1);
    threadname[15] = '\0';



    pthread_setname_np(pthread_self(), threadname);




    fdtable_do_cloexec(current->files);


    lock(&current->sighand->lock);
    for (int sig = 0; sig < NUM_SIGS; sig++) {
        struct sigaction_ *action = &current->sighand->action[sig];
        if (action->handler != SIG_IGN_)
            action->handler = SIG_DFL_;
    }
    current->sighand->altstack = 0;
    unlock(&current->sighand->lock);

    current->did_exec = 1;
    vfork_notify(current);
    return 0;
}
