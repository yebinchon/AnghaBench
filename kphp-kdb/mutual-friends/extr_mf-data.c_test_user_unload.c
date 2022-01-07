
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;


 int assert (int) ;
 int * conv_uid (int) ;
 int cur_users ;
 int del_user_used (int *) ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 int unbind_user_metafile (int *) ;
 scalar_t__ user_loaded (int *) ;
 int verbosity ;

void test_user_unload (int uid) {
  if (verbosity > 2) {
    fprintf (stderr, "test user unload %d\n", uid);
  }

  user *u = conv_uid (uid);
  if (u == ((void*)0)) {
    return;
  }

  if (user_loaded (u)) {
    del_user_used (u);
    unbind_user_metafile (u);
    cur_users--;
  }

  assert (!user_loaded (u));
}
