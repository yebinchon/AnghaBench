
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_split_min ;
 int log_split_mod ;

__attribute__((used)) static int unconv_uid (int user_id) {
 if (user_id >= 0) { return user_id * log_split_mod + log_split_min; }
 return -1;
}
