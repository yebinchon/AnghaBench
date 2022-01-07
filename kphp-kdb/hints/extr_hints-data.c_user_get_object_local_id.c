
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;


 int TYPE_ID (int,int) ;
 int user_get_object_local_id_type_id (int *,int ) ;

int user_get_object_local_id (user *u, int type, int object_id) {
  return user_get_object_local_id_type_id (u, TYPE_ID(type, object_id));
}
