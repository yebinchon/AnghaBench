
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int local_id; } ;
typedef TYPE_1__ user ;
typedef int predicate ;


 int NOAIO ;
 int PHOTO_TYPE ;
 int assert (int) ;
 TYPE_1__* conv_uid_get (int) ;
 int index_mode ;
 int load_user_metafile (TYPE_1__*,int ,int ) ;
 int * predicate_init (char*,int ) ;
 int user_get_photos_count (TYPE_1__*,int) ;
 int user_get_photos_count_pred (TYPE_1__*,int,int *) ;
 int user_loaded (TYPE_1__*) ;
 int write_only ;

int get_photos_count (int uid, int aid, char *condition) {
  assert (!index_mode && !write_only);

  user *u = conv_uid_get (uid);
  if (u == ((void*)0)) {
    return -1;
  }

  load_user_metafile (u, u->local_id, NOAIO);
  if (!user_loaded (u)) {
    return -2;
  }

  predicate *pred = predicate_init (condition, PHOTO_TYPE);

  if (pred == ((void*)0)) {
    return user_get_photos_count (u, aid);
  } else {
    return user_get_photos_count_pred (u, aid, pred);
  }
}
