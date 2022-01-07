
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;


 int ** User ;
 int conv_user_id (int) ;

user_t *get_user (int user_id) {
  int i = conv_user_id (user_id);
  return i >= 0 ? User[i] : 0;
}
