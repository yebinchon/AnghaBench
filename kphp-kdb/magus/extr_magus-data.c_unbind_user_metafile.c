
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metafile_len; int * metafile; } ;
typedef TYPE_1__ user ;


 int * EMPTY__METAFILE ;
 int assert (int ) ;
 int dl_free (int *,int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int verbosity ;

void unbind_user_metafile (user *u) {
  assert (u != ((void*)0));

  if (verbosity > 2) {
    fprintf (stderr, "unbind_user_metafile\n");
  }

  if (u->metafile != ((void*)0) && u->metafile != EMPTY__METAFILE) {
    dl_free (u->metafile, u->metafile_len);
  }

  u->metafile = ((void*)0);
  u->metafile_len = -1;
}
