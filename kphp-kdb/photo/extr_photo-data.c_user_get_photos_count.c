
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
typedef int data ;


 int assert (int ) ;
 int data_get_cnt (int *) ;
 int * user_get_photo_data (int *,int) ;
 int user_loaded (int *) ;

int user_get_photos_count (user *u, int aid) {


  assert (user_loaded (u));
  data *d = user_get_photo_data (u, aid);
  if (d == ((void*)0)) {
    return -1;
  }

  return data_get_cnt (d);
}
