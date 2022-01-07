
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashfile_checkpoint {int ctx; int offset; } ;
struct hashfile {int ctx; int total; } ;


 int hashflush (struct hashfile*) ;

void hashfile_checkpoint(struct hashfile *f, struct hashfile_checkpoint *checkpoint)
{
 hashflush(f);
 checkpoint->offset = f->total;
 checkpoint->ctx = f->ctx;
}
