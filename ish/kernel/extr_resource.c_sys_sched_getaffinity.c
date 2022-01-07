
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int dummy; } ;
typedef scalar_t__ pid_t_ ;
typedef int int_t ;
typedef int dword_t ;
typedef int cpuset ;
typedef int addr_t ;


 int STRACE (char*,scalar_t__,int,int ) ;
 int _EFAULT ;
 int _ESRCH ;
 int _SC_NPROCESSORS_ONLN ;
 int bit_set (unsigned int,char*) ;
 int lock (int *) ;
 int memset (char*,int ,int) ;
 struct task* pid_get_task (scalar_t__) ;
 int pids_lock ;
 unsigned int sysconf (int ) ;
 int unlock (int *) ;
 scalar_t__ user_write (int ,char*,int) ;

int_t sys_sched_getaffinity(pid_t_ pid, dword_t cpusetsize, addr_t cpuset_addr) {
    STRACE("sched_getaffinity(%d, %d, %#x)", pid, cpusetsize, cpuset_addr);
    if (pid != 0) {
        lock(&pids_lock);
        struct task *task = pid_get_task(pid);
        unlock(&pids_lock);
        if (task == ((void*)0))
            return _ESRCH;
    }

    unsigned cpus = sysconf(_SC_NPROCESSORS_ONLN);
    if (cpus > cpusetsize * 8)
        cpus = cpusetsize * 8;
    char cpuset[cpusetsize];
    memset(cpuset, 0, sizeof(cpuset));
    for (unsigned i = 0; i < cpus; i++)
        bit_set(i, cpuset);
    if (user_write(cpuset_addr, cpuset, cpusetsize))
        return _EFAULT;
    return 0;
}
