
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;


 int assert (int) ;
 int cur_users ;
 int del_user_used (int *) ;
 int unload_user_metafile (int *) ;
 int user_loaded (int *) ;

void user_unload (user *u) {
  assert (user_loaded (u));

  del_user_used (u);
  unload_user_metafile (u);
  cur_users--;

  assert (!user_loaded (u));
}
