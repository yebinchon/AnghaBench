
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ allow_negative ;
 int split_mod ;
 int split_rem ;

int conv_uid (int id) {
  if (id < 0 && allow_negative) {
    id = -id;
  }
  if (id <= 0) {
    return -1;
  }
  return id % split_mod == split_rem ? id / split_mod : -1;
}
