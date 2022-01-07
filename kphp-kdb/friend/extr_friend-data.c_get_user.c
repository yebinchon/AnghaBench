
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;


 int ** User ;
 int conv_uid (int) ;

__attribute__((used)) static user_t *get_user (int user_id) {
  int i = conv_uid (user_id);
  return i >= 0 ? User[i] : 0;
}
