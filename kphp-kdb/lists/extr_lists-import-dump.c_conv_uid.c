
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_id_t ;


 int MAX_USERS ;
 scalar_t__ allow_negative ;
 int split_mod ;
 int split_rem ;

int conv_uid (list_id_t id) {
  if (id < 0 && allow_negative) {
    id = -id;
  }
  if (id <= 0 || id >= split_mod * MAX_USERS) {
    return -1;
  }
  return id % split_mod == split_rem ? id / split_mod : -1;
}
