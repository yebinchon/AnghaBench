
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int events; } ;


 int CLONE_FILES ;
 int CLONE_VM ;
 int POLLIN ;
 int clone (int ,void*,int,int *) ;
 int errno ;
 int io_thread ;
 int kernel_fd ;
 TYPE_1__ kernel_pollfd ;
 int os_close_file (int) ;
 int os_pipe (int*,int,int) ;
 int os_set_fd_block (int,int ) ;
 int printk (char*,...) ;

int start_io_thread(unsigned long sp, int *fd_out)
{
 int pid, fds[2], err;

 err = os_pipe(fds, 1, 1);
 if(err < 0){
  printk("start_io_thread - os_pipe failed, err = %d\n", -err);
  goto out;
 }

 kernel_fd = fds[0];
 kernel_pollfd.fd = kernel_fd;
 kernel_pollfd.events = POLLIN;
 *fd_out = fds[1];

 err = os_set_fd_block(*fd_out, 0);
 err = os_set_fd_block(kernel_fd, 0);
 if (err) {
  printk("start_io_thread - failed to set nonblocking I/O.\n");
  goto out_close;
 }

 pid = clone(io_thread, (void *) sp, CLONE_FILES | CLONE_VM, ((void*)0));
 if(pid < 0){
  err = -errno;
  printk("start_io_thread - clone failed : errno = %d\n", errno);
  goto out_close;
 }

 return(pid);

 out_close:
 os_close_file(fds[0]);
 os_close_file(fds[1]);
 kernel_fd = -1;
 *fd_out = -1;
 out:
 return err;
}
