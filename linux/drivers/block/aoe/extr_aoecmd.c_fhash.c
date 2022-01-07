
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct frame {size_t tag; int head; TYPE_1__* t; } ;
struct aoedev {int * factive; } ;
struct TYPE_2__ {struct aoedev* d; } ;


 size_t NFACTIVE ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void
fhash(struct frame *f)
{
 struct aoedev *d = f->t->d;
 u32 n;

 n = f->tag % NFACTIVE;
 list_add_tail(&f->head, &d->factive[n]);
}
