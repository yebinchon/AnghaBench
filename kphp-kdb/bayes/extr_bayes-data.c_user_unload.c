
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;


 int assert (int) ;
 int cur_users ;
 int del_user_used (int *) ;
 int fprintf (int ,char*,int) ;
 int ltbl_get_rev (int *,int) ;
 int stderr ;
 int unload_user_metafile (int *) ;
 int user_loaded (int *) ;
 int user_table ;
 int * users ;

void user_unload (user *u) {
  assert (u != ((void*)0));

  if (!user_loaded (u)) {
    fprintf (stderr, "%d\n", ltbl_get_rev (&user_table, (int)(u - users)));
    assert (0);
    return;
  }

  del_user_used (u);
  unload_user_metafile (u);
  cur_users--;
  assert (!user_loaded (u));
}
