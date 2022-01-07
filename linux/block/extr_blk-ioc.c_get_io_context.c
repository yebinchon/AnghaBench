
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_context {int refcount; } ;


 int BUG_ON (int) ;
 int atomic_long_inc (int *) ;
 scalar_t__ atomic_long_read (int *) ;

void get_io_context(struct io_context *ioc)
{
 BUG_ON(atomic_long_read(&ioc->refcount) <= 0);
 atomic_long_inc(&ioc->refcount);
}
