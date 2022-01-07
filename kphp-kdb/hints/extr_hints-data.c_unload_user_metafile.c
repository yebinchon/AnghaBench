
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ metafile_len; scalar_t__ aio; int metafile; } ;
typedef TYPE_1__ user ;


 int allocated_metafile_bytes ;
 int assert (int ) ;
 int cur_users ;
 int del_user_used (TYPE_1__*) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ ltbl_get_rev (int *,int) ;
 int stderr ;
 int unbind_user_metafile (TYPE_1__*) ;
 int user_table ;
 TYPE_1__* users ;
 int verbosity ;

int unload_user_metafile (user *u) {
  assert (u != ((void*)0));

  int user_id = -1;

  if (verbosity > 1) {
    user_id = (int)ltbl_get_rev (&user_table, (int)(u - users));
  }

  if (verbosity > 2) {
    fprintf (stderr, "unload_user_metafile (%d)\n", user_id);
  }

  if (!u->metafile || u->aio) {
    if (verbosity > 1) {
      fprintf (stderr, "cannot unload user metafile (%d)\n", user_id);
    }
    return 0;
  }

  del_user_used (u);
  cur_users--;

  allocated_metafile_bytes -= u->metafile_len;

  unbind_user_metafile (u);

  if (verbosity > 2) {
    fprintf (stderr, "unload_user_metafile (%d) END\n", user_id);
  }

  return 1;
}
