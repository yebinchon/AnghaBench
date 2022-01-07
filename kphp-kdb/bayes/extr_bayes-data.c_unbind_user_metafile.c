
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metafile_len; int * metafile; } ;
typedef TYPE_1__ user ;


 int * EMPTY__METAFILE ;
 int fprintf (int ,char*) ;
 int qfree (int *,int) ;
 int stderr ;
 int verbosity ;

void unbind_user_metafile (user *u) {
  if (u == ((void*)0)) {
    return;
  }

  if (verbosity > 2) {
    fprintf (stderr, "unbind_user_metafile\n");
  }

  if (u->metafile != ((void*)0) && u->metafile != EMPTY__METAFILE) {
    qfree (u->metafile, u->metafile_len);
  }

  u->metafile = ((void*)0);
  u->metafile_len = -1;
}
