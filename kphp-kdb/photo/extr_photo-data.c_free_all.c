
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;


 int assert (int) ;
 int dl_free (int *,int) ;
 scalar_t__ dl_get_memory_used () ;
 int fprintf (int ,char*,scalar_t__) ;
 int free_header (int *) ;
 int free_types () ;
 int h_users ;
 int header ;
 int index_mode ;
 int map_int_int_free (int *) ;
 int set_intp_free (int *) ;
 int stderr ;
 int user_LRU_unload () ;
 int user_cnt ;
 int user_unloaded_free (int *) ;
 int * users ;
 int utils_free () ;
 scalar_t__ verbosity ;
 int volumes ;
 int write_only ;

void free_all (void) {
  if (verbosity > 0) {
    while (user_LRU_unload() != -1) {
    }

    if (!write_only && !index_mode) {
      int i;
      for (i = 1; i < user_cnt; i++) {
        user *u = &users[i];
        user_unloaded_free (u);
      }
    }
    dl_free (users, sizeof (user) * user_cnt);

    map_int_int_free (&volumes);
    set_intp_free (&h_users);
    free_header (&header);

    free_types();

    utils_free();

    fprintf (stderr, "Memory left: %lld\n", dl_get_memory_used());
    assert (dl_get_memory_used() == 0);
  }
}
