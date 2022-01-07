
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gather_data {char* orig_key; char* new_key; } ;
struct conn_query {int dummy; } ;


 struct gather_data* GATHER_QUERY (struct conn_query*) ;
 int delete_search_query (struct conn_query*) ;
 int end_search_query (struct conn_query*) ;
 int fprintf (int ,char*,char*,...) ;
 int gather_timeouts ;
 int stderr ;
 int verbosity ;

int search_query_timeout (struct conn_query *q) {
  if (verbosity >= 3) {
    fprintf (stderr, "Query %p timeout.\n", q);
  }
  struct gather_data *G = GATHER_QUERY(q);
  fprintf (stderr, "Query on key %s (outbound key %s) timeout\n", G->orig_key, G->new_key);
  gather_timeouts++;
  end_search_query (q);
  delete_search_query (q);

  return 0;
}
