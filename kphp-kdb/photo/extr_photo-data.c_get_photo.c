
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int local_id; } ;
typedef TYPE_1__ user ;
typedef int actual_object ;


 int NOAIO ;
 size_t PHOTO_TYPE ;
 int assert (int) ;
 int check_photo_id (int) ;
 TYPE_1__* conv_uid_get (int) ;
 scalar_t__ debug_error ;
 char* event_to_array (int *,size_t,int ,int) ;
 int get_fields (int *,char*) ;
 int index_mode ;
 int load_user_metafile (TYPE_1__*,int ,int ) ;
 int return_fields ;
 int * types ;
 scalar_t__ user_get_photo (TYPE_1__*,int,int const,int *) ;
 int user_loaded (TYPE_1__*) ;
 int write_only ;

int get_photo (int uid, int pid, const int force, char *fields, char **result) {
  assert (!index_mode && !write_only);

  user *u = conv_uid_get (uid);
  int fields_n = get_fields (&types[PHOTO_TYPE], fields);

  if (u == ((void*)0) || fields_n < 0 || !check_photo_id (pid)) {
    return 0;
  }

  load_user_metafile (u, u->local_id, NOAIO);
  if (!user_loaded (u)) {
    return -2;
  }

  actual_object o;
  if (user_get_photo (u, pid, force, &o) < 0) {
    return 0;
  }

  *result = event_to_array (&o, PHOTO_TYPE, return_fields, fields_n);

  if (debug_error) {
    return 0;
  }

  return 1;
}
