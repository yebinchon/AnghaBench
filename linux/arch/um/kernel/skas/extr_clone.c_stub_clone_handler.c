
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stub_data {long err; int offset; int fd; } ;


 int CLONE_FILES ;
 int CLONE_PARENT ;
 int PTRACE_TRACEME ;
 int SIGCHLD ;
 int STUB_DATA ;
 int UM_KERN_PAGE_SIZE ;
 int __NR_clone ;
 int __NR_ptrace ;
 int remap_stack (int ,int ) ;
 long stub_syscall2 (int ,int,int) ;
 long stub_syscall4 (int ,int ,int ,int ,int ) ;
 int trap_myself () ;

void __attribute__ ((__section__ (".__syscall_stub")))
stub_clone_handler(void)
{
 struct stub_data *data = (struct stub_data *) STUB_DATA;
 long err;

 err = stub_syscall2(__NR_clone, CLONE_PARENT | CLONE_FILES | SIGCHLD,
       STUB_DATA + UM_KERN_PAGE_SIZE / 2 - sizeof(void *));
 if (err != 0)
  goto out;

 err = stub_syscall4(__NR_ptrace, PTRACE_TRACEME, 0, 0, 0);
 if (err)
  goto out;

 remap_stack(data->fd, data->offset);
 goto done;

 out:






 data->err = err;
 done:
 trap_myself();
}
