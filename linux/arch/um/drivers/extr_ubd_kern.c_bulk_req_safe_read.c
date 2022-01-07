
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_thread_req {int dummy; } ;


 int WARN (int,char*) ;
 int memmove (char*,char*,int) ;
 int os_read_file (int,char*,int) ;

__attribute__((used)) static int bulk_req_safe_read(
 int fd,
 struct io_thread_req * (*request_buffer)[],
 struct io_thread_req **remainder,
 int *remainder_size,
 int max_recs
 )
{
 int n = 0;
 int res = 0;

 if (*remainder_size > 0) {
  memmove(
   (char *) request_buffer,
   (char *) remainder, *remainder_size
  );
  n = *remainder_size;
 }

 res = os_read_file(
   fd,
   ((char *) request_buffer) + *remainder_size,
   sizeof(struct io_thread_req *)*max_recs
    - *remainder_size
  );
 if (res > 0) {
  n += res;
  if ((n % sizeof(struct io_thread_req *)) > 0) {





   *remainder_size = n % sizeof(struct io_thread_req *);
   WARN(*remainder_size > 0, "UBD IPC read returned a partial result");
   memmove(
    remainder,
    ((char *) request_buffer) +
     (n/sizeof(struct io_thread_req *))*sizeof(struct io_thread_req *),
    *remainder_size
   );
   n = n - *remainder_size;
  }
 } else {
  n = res;
 }
 return n;
}
