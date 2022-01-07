
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRIME ;
 scalar_t__* UserModHeaders ;
 int dyn_purge_deleted_user_messages (scalar_t__) ;

void dyn_purge_all_deleted_messages (void) {
  int i;
  for (i = 0; i < PRIME; i++) {
    if (UserModHeaders[i]) {
      dyn_purge_deleted_user_messages(UserModHeaders[i]);
    }
  }
}
