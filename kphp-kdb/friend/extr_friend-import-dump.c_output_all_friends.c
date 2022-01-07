
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* Friends ;
 int MAX_USERS ;
 int output_user_friends (scalar_t__,scalar_t__) ;
 int split_mod ;
 scalar_t__ split_rem ;

void output_all_friends (void) {
  int i;
  for (i = 0; i < MAX_USERS; i++) {
    if (Friends[i]) {
      output_user_friends (i*split_mod + split_rem, Friends[i]);
    }
  }
}
