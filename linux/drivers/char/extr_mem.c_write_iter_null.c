
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef size_t ssize_t ;


 int iov_iter_advance (struct iov_iter*,size_t) ;
 size_t iov_iter_count (struct iov_iter*) ;

__attribute__((used)) static ssize_t write_iter_null(struct kiocb *iocb, struct iov_iter *from)
{
 size_t count = iov_iter_count(from);
 iov_iter_advance(from, count);
 return count;
}
