
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef size_t ssize_t ;


 size_t EFAULT ;
 size_t ERESTARTSYS ;
 size_t PAGE_SIZE ;
 int cond_resched () ;
 int current ;
 size_t iov_iter_count (struct iov_iter*) ;
 size_t iov_iter_zero (size_t,struct iov_iter*) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static ssize_t read_iter_zero(struct kiocb *iocb, struct iov_iter *iter)
{
 size_t written = 0;

 while (iov_iter_count(iter)) {
  size_t chunk = iov_iter_count(iter), n;

  if (chunk > PAGE_SIZE)
   chunk = PAGE_SIZE;
  n = iov_iter_zero(chunk, iter);
  if (!n && iov_iter_count(iter))
   return written ? written : -EFAULT;
  written += n;
  if (signal_pending(current))
   return written ? written : -ERESTARTSYS;
  cond_resched();
 }
 return written;
}
