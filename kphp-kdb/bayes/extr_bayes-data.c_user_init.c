
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cnt; scalar_t__ nbad; scalar_t__ ngood; } ;
struct TYPE_5__ {int metafile_len; TYPE_1__ b; int * prev_used; int * next_used; int * aio; int * metafile; } ;
typedef TYPE_2__ user ;


 int qhtbl_init (int *) ;

void user_init (user *u) {
  u->metafile = ((void*)0);
  u->metafile_len = -1;
  u->aio = ((void*)0);
  u->next_used = ((void*)0);
  u->prev_used = ((void*)0);

  u->b.ngood = 0;
  u->b.nbad = 0;
  qhtbl_init (&u->b.cnt);
}
