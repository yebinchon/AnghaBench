
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
typedef int data ;
typedef int actual_object ;


 int assert (int ) ;
 int * user_get_album_data (int *) ;
 int user_get_obj (int *,int,int const,int *) ;
 int user_loaded (int *) ;

int user_get_album (user *u, int aid, const int force, actual_object *o) {
  assert (user_loaded (u));

  data *d = user_get_album_data (u);
  return user_get_obj (d, aid, force, o);
}
