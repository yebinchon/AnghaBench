
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct git_istream {TYPE_1__* vtbl; } ;
struct TYPE_2__ {int (* close ) (struct git_istream*) ;} ;


 int free (struct git_istream*) ;
 int stub1 (struct git_istream*) ;

int close_istream(struct git_istream *st)
{
 int r = st->vtbl->close(st);
 free(st);
 return r;
}
