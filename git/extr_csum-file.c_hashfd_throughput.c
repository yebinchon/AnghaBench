
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct progress {int dummy; } ;
struct hashfile {int fd; int check_fd; char const* name; int ctx; scalar_t__ do_crc; struct progress* tp; scalar_t__ total; scalar_t__ offset; } ;
struct TYPE_2__ {int (* init_fn ) (int *) ;} ;


 int stub1 (int *) ;
 TYPE_1__* the_hash_algo ;
 struct hashfile* xmalloc (int) ;

struct hashfile *hashfd_throughput(int fd, const char *name, struct progress *tp)
{
 struct hashfile *f = xmalloc(sizeof(*f));
 f->fd = fd;
 f->check_fd = -1;
 f->offset = 0;
 f->total = 0;
 f->tp = tp;
 f->name = name;
 f->do_crc = 0;
 the_hash_algo->init_fn(&f->ctx);
 return f;
}
