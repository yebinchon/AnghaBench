
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int local_id; } ;
typedef TYPE_1__ user ;
typedef int actual_object ;


 size_t ALBUM_TYPE ;
 int NOAIO ;
 int assert (int) ;
 TYPE_1__* conv_uid_get (int) ;
 scalar_t__ debug_error ;
 char* event_to_array (int *,size_t,int ,int) ;
 int get_fields (int *,char*) ;
 int index_mode ;
 int load_user_metafile (TYPE_1__*,int ,int ) ;
 int return_fields ;
 int * types ;
 scalar_t__ user_get_album (TYPE_1__*,int,int const,int *) ;
 int user_loaded (TYPE_1__*) ;
 int write_only ;

int get_album (int uid, int aid, const int force, char *fields, char **result) {
  assert (!index_mode && !write_only);

  user *u = conv_uid_get (uid);
  int fields_n = get_fields (&types[ALBUM_TYPE], fields);

  if (u == ((void*)0) || fields_n < 0) {
    return 0;
  }

  load_user_metafile (u, u->local_id, NOAIO);
  if (!user_loaded (u)) {
    return -2;
  }

  actual_object o;
  if (user_get_album (u, aid, force, &o) < 0) {
    return 0;
  }

  *result = event_to_array (&o, ALBUM_TYPE, return_fields, fields_n);

  if (debug_error) {
    return 0;
  }

  return 1;
}
