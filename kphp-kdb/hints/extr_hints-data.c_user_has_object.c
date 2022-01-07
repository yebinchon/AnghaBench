
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;


 int user_get_object_local_id (int *,int,int) ;
 int user_has_local_object (int *,int) ;

inline int user_has_object (user *u, int type, int id) {
  int local_id = user_get_object_local_id (u, type, id);

  return user_has_local_object (u, local_id);
}
