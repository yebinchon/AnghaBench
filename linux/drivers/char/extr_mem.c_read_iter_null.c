
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef int ssize_t ;



__attribute__((used)) static ssize_t read_iter_null(struct kiocb *iocb, struct iov_iter *to)
{
 return 0;
}
