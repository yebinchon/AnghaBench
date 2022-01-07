
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; scalar_t__ metafile_len; } ;
typedef TYPE_1__ user ;


 int INIT ;
 int RETURN (int ,int) ;
 int allocated_metafile_bytes ;
 int assert (int ) ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 int unbind_user_metafile (TYPE_1__*) ;
 int unload_user ;
 int user_loaded (TYPE_1__*) ;
 int verbosity ;

int unload_user_metafile (user *u) {
  INIT;

  assert (u != ((void*)0));

  int user_id = 0;

  if (verbosity > 1) {
    user_id = u->id;
  }

  if (verbosity > 2) {
    fprintf (stderr, "unload_user_metafile (%d)\n", user_id);
  }

  if (!u || !user_loaded (u)) {
    if (verbosity > 1) {
      fprintf (stderr, "cannot unload user metafile (%d)\n", user_id);
      assert (0);
    }
    RETURN(unload_user, 0);
  }

  allocated_metafile_bytes -= u->metafile_len;

  unbind_user_metafile (u);

  if (verbosity > 2) {
    fprintf (stderr, "unload_user_metafile (%d) END\n", user_id);
  }

  RETURN(unload_user, 1);
}
