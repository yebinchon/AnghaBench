
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct value_buffer {int (* output_int ) (struct value_buffer*,int) ;int (* output_char ) (struct value_buffer*,char) ;int (* output_item_id ) (struct value_buffer*,int ) ;int (* output_hash ) (struct value_buffer*,int ) ;} ;
struct search_query_heap_en {double cpu_time; int res; scalar_t__* query; } ;
struct connection {int dummy; } ;
struct TYPE_5__ {double cpu_time; } ;
struct TYPE_4__ {int item_id; } ;


 int LAST_SEARCH_QUERY_BUFF_SIZE ;
 scalar_t__ Q_hash_group_mode ;
 scalar_t__ Q_limit ;
 int Q_raw ;
 TYPE_1__** R ;
 int * RR ;
 int R_cnt ;
 int R_tot ;
 scalar_t__ SEARCH_QUERY_HEAP_SIZE ;
 TYPE_2__* SQH ;
 scalar_t__ SQH_SIZE ;
 int assert (int) ;
 int convert_rating (int ) ;
 int fprintf (int ,char*,...) ;
 int get_hash_item (TYPE_1__*) ;
 double get_rusage_time () ;
 scalar_t__* last_search_query ;
 int memcpy (scalar_t__*,char const*,int) ;
 char* parse_query (char*,int *,int*) ;
 int perform_query () ;
 int return_one_key (struct connection*,char const*,char*,int ) ;
 int search_queries ;
 int search_query_heap_insert (struct search_query_heap_en*) ;
 int sprintf (char*,char*,char*) ;
 int stderr ;
 int strcpy (scalar_t__*,char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
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
 int value_buffer_init (struct value_buffer*,struct connection*,char const*,int,int ,int) ;
 int value_buffer_return (struct value_buffer*) ;
 scalar_t__ verbosity ;
 int vkprintf (int,char*,...) ;
 scalar_t__* zzmalloc (int) ;

int do_search_query (struct connection *c, const char *key, int len, int dog_len) {
  static char buff[2048];
  int i = -1;
  int res;

  if (strncmp (key, "search", 6)) {
    return 0;
  }

  if (verbosity > 0) {
    fprintf (stderr, "got: %s\n", key);
  }

  res = 0;
  int r;
  char *q_end = parse_query ((char*) key, &Q_raw, &r);

  if (r < 0) {
    vkprintf (1, "parse_query (%.*s) returns error code %d.\n", len, key, r);
    vkprintf (1, "ERROR near '%.256s'\n", q_end);
    return return_one_key (c, key - dog_len, buff, sprintf (buff, "ERROR near '%.256s'\n", q_end));
  }

  R_cnt = 0;
  search_queries++;

  if (len < LAST_SEARCH_QUERY_BUFF_SIZE) {
    memcpy (last_search_query, key, len);
    last_search_query[len] = 0;
  } else {
    strcpy (last_search_query, "TOO LONG QUERY");
  }

  double perform_query_time = -get_rusage_time ();
  res = perform_query();
  perform_query_time += get_rusage_time ();

  if (SQH_SIZE < SEARCH_QUERY_HEAP_SIZE || SQH[1].cpu_time < perform_query_time) {
    struct search_query_heap_en E;
    E.query = zzmalloc (len+1);
    strcpy (E.query, key);
    E.cpu_time = perform_query_time;
    E.res = res;
    search_query_heap_insert (&E);
  }
  if (verbosity > 0) {
    fprintf (stderr, "result = %d\n", res);
  }

  struct value_buffer b;
  if (!value_buffer_init (&b, c, key - dog_len, len + dog_len, Q_raw, 64)) {
    return -1;
  }
  if (Q_hash_group_mode) {
    assert (Q_limit > 0);
    b.output_int (&b, R_tot);
    for (i = 0; i < R_cnt; i++) {
      if (!value_buffer_flush (&b) ) { return -1; }
      b.output_char (&b, ',');
      b.output_item_id (&b, R[i]->item_id);
      b.output_char (&b, ',');
      b.output_int (&b, convert_rating (RR[i]));
      b.output_char (&b, ',');
      b.output_hash (&b, get_hash_item (R[i]));
    }
    return value_buffer_return (&b);
  }

  b.output_int (&b, res);
  for (i = 0; i < R_cnt; i++) {
    if (!value_buffer_flush (&b) ) { return -1; }
    b.output_char (&b, ',');
    b.output_item_id (&b, R[i]->item_id);
    b.output_char (&b, ',');
    b.output_int (&b, convert_rating (RR[i]));
  }
  return value_buffer_return (&b);
}
