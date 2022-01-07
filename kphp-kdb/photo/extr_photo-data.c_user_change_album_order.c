
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
typedef int data ;


 int assert (int ) ;
 int user_change_order (int *,int,int,int) ;
 int * user_get_album_data (int *) ;
 int user_loaded (int *) ;
 scalar_t__ write_only ;

int user_change_album_order (user *u, int aid, int aid_near, int is_next) {


  if (write_only) {
    return 1;
  }

  assert (user_loaded (u));

  data *d = user_get_album_data (u);
  return user_change_order (d, aid, aid_near, is_next) > -1;
}
