
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int albums_n; scalar_t__* albums_offset; scalar_t__ metafile; int albums_id; int deleted_albums; int photos; } ;
typedef TYPE_1__ user ;
typedef int data ;


 scalar_t__ EMPTY__METAFILE ;
 scalar_t__ EMPTY__METAFILE_LEN ;
 int data_get_local_id_by_id (int *,int) ;
 int data_init (int *,int *) ;
 int data_load (int *,scalar_t__,scalar_t__) ;
 int data_loaded (int *) ;
 int dbg (char*,int) ;
 int dl_find_int (int ,int,int) ;
 int * dl_malloc (int) ;
 scalar_t__ map_int_vptr_add (int *,int) ;
 int photo_func ;
 int * set_int_get (int *,int) ;
 int * user_get_album_data (TYPE_1__*) ;

data *user_get_photo_data (user *u, int aid) {


  data *albums = user_get_album_data (u);

  int lid = data_get_local_id_by_id (albums, aid);
  if (lid == -1) {
    dbg ("unexisted album %d\n", aid);
    return ((void*)0);
  }

  data **d = (data **)map_int_vptr_add (&u->photos, aid);
  if (*d == ((void*)0)) {
    *d = dl_malloc (sizeof (data));
    data_init (*d, &photo_func);
  }



  if (!data_loaded (*d)) {
    int i = u->albums_n;
    if (set_int_get (&u->deleted_albums, aid) == ((void*)0)) {
      i = dl_find_int (u->albums_id, u->albums_n, aid);
    }
    if (i != u->albums_n) {
      data_load (*d, u->metafile + u->albums_offset[i], u->albums_offset[i + 1] - u->albums_offset[i]);
    } else {
      data_load (*d, EMPTY__METAFILE, EMPTY__METAFILE_LEN);
    }
  }

  return *d;
}
