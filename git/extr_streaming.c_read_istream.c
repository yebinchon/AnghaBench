
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct git_istream {TYPE_1__* vtbl; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* read ) (struct git_istream*,void*,size_t) ;} ;


 int stub1 (struct git_istream*,void*,size_t) ;

ssize_t read_istream(struct git_istream *st, void *buf, size_t sz)
{
 return st->vtbl->read(st, buf, sz);
}
