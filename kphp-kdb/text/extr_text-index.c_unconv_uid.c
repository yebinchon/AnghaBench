
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NEGATIVE_USER_OFFSET ;
 int log_split_min ;
 int log_split_mod ;

__attribute__((used)) static int unconv_uid (int uid) {
  uid -= NEGATIVE_USER_OFFSET;
  uid *= log_split_mod;
  if (uid < 0) {
    uid += log_split_mod - log_split_min;
  } else {
    uid += log_split_min;
  }
  return uid;
}
