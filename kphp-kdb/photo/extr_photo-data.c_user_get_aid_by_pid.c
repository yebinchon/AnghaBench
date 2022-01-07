
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int album_by_photo; } ;
typedef TYPE_1__ user ;
typedef int data ;


 int assert (int) ;
 int data_get_local_id_by_id (int *,int) ;
 int lookup_conv (int *,int,int ) ;
 int * user_get_album_data (TYPE_1__*) ;
 int user_loaded (TYPE_1__*) ;

int user_get_aid_by_pid (user *u, int pid) {


  assert (user_loaded (u));
  int res = lookup_conv (&u->album_by_photo, pid, 0);



  if (res != 0) {
    data *albums = user_get_album_data (u);
    assert (data_get_local_id_by_id (albums, res) != -1);
  }

  return res;
}
