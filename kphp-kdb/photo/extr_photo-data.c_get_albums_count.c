
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int local_id; } ;
typedef TYPE_1__ user ;
typedef int predicate ;


 int ALBUM_TYPE ;
 int MAX_ALBUMS ;
 int NOAIO ;
 int assert (int) ;
 TYPE_1__* conv_uid_get (int) ;
 int event_get_album_id (int *) ;
 int index_mode ;
 int load_user_metafile (TYPE_1__*,int ,int ) ;
 int * predicate_init (char*,int ) ;
 int * result_obj ;
 int user_get_albums (TYPE_1__*,int ,int ,int *) ;
 int user_loaded (TYPE_1__*) ;
 int write_only ;

int get_albums_count (int uid, char *condition) {
  assert (!index_mode && !write_only);

  user *u = conv_uid_get (uid);
  if (u == ((void*)0)) {
    return -1;
  }

  load_user_metafile (u, u->local_id, NOAIO);
  if (!user_loaded (u)) {
    return -2;
  }

  predicate *pred = predicate_init (condition, ALBUM_TYPE);

  int res = user_get_albums (u, 0, MAX_ALBUMS, pred);

  int i, real_res = 0;
  for (i = 0; i < res; i++) {
    int aid = event_get_album_id (&result_obj[i]);

    if (aid > 0) {
      real_res++;
    }
  }

  return real_res;
}
