
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double MAX_NEW_BOOKMARK_USERS ;
 double new_users_number ;

double new_users_perc (void) {
  return 1.0 * new_users_number / MAX_NEW_BOOKMARK_USERS;
}
