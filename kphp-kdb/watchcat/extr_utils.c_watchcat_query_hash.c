
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int watchcat_query_t ;


 int * create_watchcat_query (char*) ;
 int free_watchcat_query (int *) ;
 long long watchcat_query_hash_impl (int *) ;

long long watchcat_query_hash (char *s) {
  watchcat_query_t *query = create_watchcat_query (s);
  long long query_hash = watchcat_query_hash_impl (query);
  free_watchcat_query (query);
  return query_hash;
}
