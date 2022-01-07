
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hashfile {unsigned int offset; int buffer; int ctx; } ;
struct TYPE_2__ {int (* update_fn ) (int *,int ,unsigned int) ;} ;


 int flush (struct hashfile*,int ,unsigned int) ;
 int stub1 (int *,int ,unsigned int) ;
 TYPE_1__* the_hash_algo ;

void hashflush(struct hashfile *f)
{
 unsigned offset = f->offset;

 if (offset) {
  the_hash_algo->update_fn(&f->ctx, f->buffer, offset);
  flush(f, f->buffer, offset);
  f->offset = 0;
 }
}
