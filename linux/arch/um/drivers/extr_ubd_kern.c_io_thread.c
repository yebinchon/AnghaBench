
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_thread_req {int dummy; } ;


 int EAGAIN ;
 int UBD_REQ_BUFFER_SIZE ;
 int bulk_req_safe_read (int ,int **,int *,int *,int ) ;
 int do_io (int ) ;
 int io_count ;
 int io_remainder ;
 int io_remainder_size ;
 int ** io_req_buffer ;
 int kernel_fd ;
 int os_fix_helper_signals () ;
 int os_write_file (int ,char*,int) ;
 int ubd_read_poll (int) ;
 int ubd_write_poll (int) ;

int io_thread(void *arg)
{
 int n, count, written, res;

 os_fix_helper_signals();

 while(1){
  n = bulk_req_safe_read(
   kernel_fd,
   io_req_buffer,
   &io_remainder,
   &io_remainder_size,
   UBD_REQ_BUFFER_SIZE
  );
  if (n < 0) {
   if (n == -EAGAIN) {
    ubd_read_poll(-1);
    continue;
   }
  }

  for (count = 0; count < n/sizeof(struct io_thread_req *); count++) {
   io_count++;
   do_io((*io_req_buffer)[count]);
  }

  written = 0;

  do {
   res = os_write_file(kernel_fd, ((char *) io_req_buffer) + written, n);
   if (res >= 0) {
    written += res;
   }
   if (written < n) {
    ubd_write_poll(-1);
   }
  } while (written < n);
 }

 return 0;
}
