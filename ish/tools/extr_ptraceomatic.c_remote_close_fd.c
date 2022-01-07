
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_regs_struct {long rip; int rax; int rbx; } ;


 int errno ;
 int exit (int) ;
 int getregs (int,struct user_regs_struct*) ;
 int perror (char*) ;
 int setregs (int,struct user_regs_struct*) ;
 int step (int) ;

__attribute__((used)) static void remote_close_fd(int pid, int fd, long int80_ip) {

    struct user_regs_struct saved_regs;
    getregs(pid, &saved_regs);
    struct user_regs_struct regs = saved_regs;
    regs.rip = int80_ip;
    regs.rax = 6;
    regs.rbx = fd;
    setregs(pid, &regs);
    step(pid);
    getregs(pid, &regs);
    if ((long) regs.rax < 0) {
        errno = -regs.rax;
        perror("remote close fd");
        exit(1);
    }
    setregs(pid, &regs);
}
