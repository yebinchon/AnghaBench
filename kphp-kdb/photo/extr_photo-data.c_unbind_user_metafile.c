
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metafile_len; int * metafile; int album_by_photo; int d; int photos; } ;
typedef TYPE_1__ user ;


 int * EMPTY__METAFILE ;
 int assert (int ) ;
 int check_data ;
 int data_unload (int *) ;
 int dl_free (int *,int) ;
 int fprintf (int ,char*) ;
 int lookup_unload (int *) ;
 int map_int_vptr_del (int *,int ) ;
 int map_int_vptr_foreach (int *,int ) ;
 int stderr ;
 int * todel ;
 int todel_n ;
 int verbosity ;

void unbind_user_metafile (user *u) {
  assert (u != ((void*)0));

  if (verbosity > 2) {
    fprintf (stderr, "unbind_user_metafile\n");
  }
  todel_n = 0;
  map_int_vptr_foreach (&u->photos, check_data);
  int i;
  for (i = 0; i < todel_n; i++) {
    map_int_vptr_del (&u->photos, todel[i]);
  }



  data_unload (&u->d);
  lookup_unload (&u->album_by_photo);

  if (u->metafile != ((void*)0) && u->metafile != EMPTY__METAFILE) {
    dl_free (u->metafile, u->metafile_len);
  }

  u->metafile = ((void*)0);
  u->metafile_len = -1;
}
