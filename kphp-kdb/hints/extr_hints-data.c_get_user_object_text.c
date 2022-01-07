
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;


 int NOAIO ;
 int assert (int) ;
 int bad_requests ;
 int check_object_id (long long) ;
 int check_type (int) ;
 int check_user_id (int) ;
 char* clean_str (char*) ;
 int * conv_user_id (int) ;
 int get_local_user_id (int) ;
 int * load_user_metafile (int *,int,int ) ;
 int user_get_object_local_id (int *,int,long long) ;
 char* user_get_object_name (int *,int) ;

int get_user_object_text (int user_id, int type, long long object_id, char **text) {
  if (!check_user_id (user_id) || !check_type (type) || !check_object_id (object_id)) {
    bad_requests++;
    return -1;
  }

  int local_user_id = get_local_user_id (user_id);
  if (local_user_id == 0) {
    return 0;
  }
  assert (local_user_id > 0);

  user *u = conv_user_id (user_id);
  assert (u != ((void*)0));

  if (load_user_metafile (u, local_user_id, NOAIO) == ((void*)0)) {
    return -2;
  }

  int local_id = user_get_object_local_id (u, type, object_id);
  if (!local_id) {
    return 0;
  }

  char *name = user_get_object_name (u, local_id);
  if (name == ((void*)0)) {
    return 0;
  }

  *text = clean_str (name);
  return 1;
}
