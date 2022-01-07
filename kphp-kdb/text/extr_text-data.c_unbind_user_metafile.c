
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int user_id; int topmsg_tree; TYPE_1__* Sublists; TYPE_3__* mf; } ;
typedef TYPE_2__ user_t ;
struct TYPE_8__ {char* data; int aio; } ;
typedef TYPE_3__ core_mf_t ;
struct TYPE_6__ {scalar_t__ A; } ;


 int NIL_N ;
 int assert (int ) ;
 int fprintf (int ,char*,TYPE_2__*,int,char*) ;
 int free_tree_num (int ) ;
 int stderr ;
 int sublists_num ;
 int verbosity ;

void unbind_user_metafile (user_t *U) {
  int i;
  core_mf_t *M = U->mf;

  assert (M && !M->aio);
  char *metafile = M->data;

  if (verbosity > 2) {
    fprintf (stderr, "unbind_user_metafile(%p) : user_id=%d mf=%p\n", U, U->user_id, metafile);
  }

  for (i = 0; i < sublists_num; i++) {
    U->Sublists[i].A = 0;
  }

  free_tree_num (U->topmsg_tree);
  U->topmsg_tree = NIL_N;
}
