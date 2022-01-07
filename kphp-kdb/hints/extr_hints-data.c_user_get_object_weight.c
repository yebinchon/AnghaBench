
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
typedef int rating ;


 int check (int *,int) ;
 int * user_get_object_rating (int *,int,int) ;

rating user_get_object_weight (user *u, int local_id, int num) {
  check (u, local_id);

  return *user_get_object_rating (u, local_id, num);
}
