
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
typedef int data ;


 int assert (int ) ;
 int data_get_cnt (int *) ;
 int * user_get_album_data (int *) ;
 int user_loaded (int *) ;

int user_get_albums_count (user *u) {


  assert (user_loaded (u));
  data *d = user_get_album_data (u);

  return data_get_cnt (d);
}
