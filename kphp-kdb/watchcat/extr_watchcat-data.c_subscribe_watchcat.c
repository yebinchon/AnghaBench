
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wkey ;
typedef int watchcat_query_t ;
struct TYPE_4__ {int keys; } ;
typedef TYPE_1__ watchcat ;


 int * create_watchcat_query (char*) ;
 int fprintf (int ,char*,long long,char*,int,int) ;
 int free_watchcat_query (int *) ;
 TYPE_1__* get_watchcat (long long,int *) ;
 int my_verbosity ;
 int rand () ;
 int stderr ;
 int * trp_add (int *,int,int ,TYPE_1__*) ;
 int watchcat_query_hash_impl (int *) ;
 int wkey_fix (int *,int) ;

void subscribe_watchcat (long long id, char *s, int q_id, int timeout) {
  if (my_verbosity > 1) {
    fprintf (stderr, "subscribe wathcat %lld (%s), q_id = %d, timeout = %d\n", id, s, q_id, timeout);
  }


  watchcat_query_t *query = create_watchcat_query (s);
  if (watchcat_query_hash_impl (query) == -1) {
    free_watchcat_query (query);
    return;
  }
  watchcat *w = get_watchcat (id, query);

  wkey *k = trp_add (&w->keys, q_id, rand(), w);
  wkey_fix (k, timeout);
}
