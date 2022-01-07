
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d; } ;
typedef TYPE_1__ user ;
typedef int data ;


 int assert (int ) ;
 int data_loaded (int *) ;

data *user_get_album_data (user *u) {


  data *res = &u->d;
  assert (data_loaded (res));
  return res;
}
