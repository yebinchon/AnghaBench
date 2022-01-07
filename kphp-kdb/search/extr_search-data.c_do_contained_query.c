
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Q_limit ;
 scalar_t__ Q_nodes ;
 int Q_root ;
 scalar_t__ Q_words ;
 long long advance_iterators (int ,long long) ;
 int free_all_list_decoders () ;
 char* parse_ptr ;
 int parse_query_expr () ;
 scalar_t__ prepare_query_iterators (int ) ;

int do_contained_query (long long item_id, char **text) {
  free_all_list_decoders ();
  Q_limit = 0;
  Q_words = Q_nodes = 0;
  parse_ptr = *text;
  Q_root = parse_query_expr ();
  if (!Q_root || *parse_ptr) {
    free_all_list_decoders ();
    *text = parse_ptr;
    return -1;
  }
  if (prepare_query_iterators (Q_root) < 0) {
    free_all_list_decoders ();
    return -1;
  }
  int r = (item_id == advance_iterators (Q_root, item_id)) ? 1 : 0;
  free_all_list_decoders ();
  return r;
}
