
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct value_buffer {int (* output_int ) (struct value_buffer*,int) ;int (* output_char ) (struct value_buffer*,char) ;int (* output_item_id ) (struct value_buffer*,int ) ;int (* output_hash ) (struct value_buffer*,int ) ;} ;
struct connection {int dummy; } ;
struct TYPE_3__ {int item_id; } ;


 scalar_t__ Q_hash_group_mode ;
 scalar_t__ Q_limit ;
 TYPE_1__** R ;
 int* RV ;
 int R_cnt ;
 int R_tot ;
 int assert (int) ;
 int do_perform_query (char const*,int) ;
 int extract_hash_item (TYPE_1__*) ;
 char* parse_relevance_search_query (char*,int*,int*,int) ;
 int relevance_search_queries ;
 int return_error (struct connection*,char const*,int,int,char*) ;
 int search_queries ;
 int stub1 (struct value_buffer*,int) ;
 int stub10 (struct value_buffer*,int ) ;
 int stub11 (struct value_buffer*,char) ;
 int stub12 (struct value_buffer*,int) ;
 int stub2 (struct value_buffer*,char) ;
 int stub3 (struct value_buffer*,int ) ;
 int stub4 (struct value_buffer*,char) ;
 int stub5 (struct value_buffer*,int) ;
 int stub6 (struct value_buffer*,char) ;
 int stub7 (struct value_buffer*,int ) ;
 int stub8 (struct value_buffer*,int) ;
 int stub9 (struct value_buffer*,char) ;
 int value_buffer_flush (struct value_buffer*) ;
 int value_buffer_init (struct value_buffer*,struct connection*,char const*,int,int,int) ;
 int value_buffer_return (struct value_buffer*) ;
 int vkprintf (int,char*,int,char const*,int) ;

int do_relevance_search_query (struct connection *c, const char *key, int len, int dog_len) {
  int i, Q_raw, err = 0;

  char *q_end = parse_relevance_search_query ((char *) key, &Q_raw, &err, 1);

  if (err < 0) {
    vkprintf (1, "parse_relevance_search_query (%.*s) returns error code %d.\n", len, key, err);
    return return_error (c, key, len, dog_len, q_end);
  }

  search_queries++;
  relevance_search_queries++;

  int res = do_perform_query (key, len);

  struct value_buffer b;
  if (!value_buffer_init (&b, c, key - dog_len, len + dog_len, Q_raw, 64)) {
    return 0;
  }
  if (Q_hash_group_mode) {
    assert (Q_limit > 0);
    b.output_int (&b, R_tot);
    for (i = 0; i < R_cnt; i++) {
      if (!value_buffer_flush (&b) ) { return -1; }
      b.output_char (&b, ',');
      b.output_item_id (&b, R[i]->item_id);
      b.output_char (&b, ',');
      b.output_int (&b, RV[i]);
      b.output_char (&b, ',');
      b.output_hash (&b, extract_hash_item (R[i]));
    }
    return value_buffer_return (&b);
  }

  b.output_int (&b, res);
  for (i = 0; i < R_cnt; i++) {
    if (!value_buffer_flush (&b) ) { return -1; }
    b.output_char (&b, ',');
    b.output_item_id (&b, R[i]->item_id);
    b.output_char (&b, ',');
    b.output_int (&b, RV[i]);
  }
  return value_buffer_return (&b);
}
