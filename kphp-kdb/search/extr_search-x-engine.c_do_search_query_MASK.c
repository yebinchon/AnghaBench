#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct value_buffer {int /*<<< orphan*/  (* output_int ) (struct value_buffer*,int) ;int /*<<< orphan*/  (* output_char ) (struct value_buffer*,char) ;int /*<<< orphan*/  (* output_item_id ) (struct value_buffer*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* output_hash ) (struct value_buffer*,int /*<<< orphan*/ ) ;} ;
struct search_query_heap_en {double cpu_time; int res; scalar_t__* query; } ;
struct connection {int dummy; } ;
struct TYPE_5__ {double cpu_time; } ;
struct TYPE_4__ {int /*<<< orphan*/  item_id; } ;

/* Variables and functions */
 int LAST_SEARCH_QUERY_BUFF_SIZE ; 
 scalar_t__ Q_hash_group_mode ; 
 scalar_t__ Q_limit ; 
 int /*<<< orphan*/  Q_raw ; 
 TYPE_1__** R ; 
 int /*<<< orphan*/ * RR ; 
 int R_cnt ; 
 int R_tot ; 
 scalar_t__ SEARCH_QUERY_HEAP_SIZE ; 
 TYPE_2__* SQH ; 
 scalar_t__ SQH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 double FUNC4 () ; 
 scalar_t__* last_search_query ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char const*,int) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ *,int*) ; 
 int FUNC7 () ; 
 int FUNC8 (struct connection*,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  search_queries ; 
 int /*<<< orphan*/  FUNC9 (struct search_query_heap_en*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,char const*) ; 
 scalar_t__ FUNC12 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct value_buffer*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct value_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct value_buffer*,char) ; 
 int /*<<< orphan*/  FUNC16 (struct value_buffer*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct value_buffer*,char) ; 
 int /*<<< orphan*/  FUNC18 (struct value_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct value_buffer*,char) ; 
 int /*<<< orphan*/  FUNC20 (struct value_buffer*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct value_buffer*,char) ; 
 int /*<<< orphan*/  FUNC22 (struct value_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct value_buffer*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct value_buffer*,char) ; 
 int /*<<< orphan*/  FUNC25 (struct value_buffer*) ; 
 int /*<<< orphan*/  FUNC26 (struct value_buffer*,struct connection*,char const*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC27 (struct value_buffer*) ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC28 (int,char*,...) ; 
 scalar_t__* FUNC29 (int) ; 

int FUNC30 (struct connection *c, const char *key, int len, int dog_len) {
  static char buff[2048];
  int i = -1;
  int res;

  if (FUNC12 (key, "search", 6)) {
    return 0;
  }

  if (verbosity > 0) {
    FUNC2 (stderr, "got: %s\n", key);
  }

  res = 0;
  int r;
  char *q_end = FUNC6 ((char*) key, &Q_raw, &r);

  if (r < 0) {
    FUNC28 (1, "parse_query (%.*s) returns error code %d.\n", len, key, r);
    FUNC28 (1, "ERROR near '%.256s'\n", q_end);
    return FUNC8 (c, key - dog_len, buff, FUNC10 (buff, "ERROR near '%.256s'\n", q_end));
  }

  R_cnt = 0;
  search_queries++;

  if (len < LAST_SEARCH_QUERY_BUFF_SIZE) {
    FUNC5 (last_search_query, key, len);
    last_search_query[len] = 0;
  } else {
    FUNC11 (last_search_query, "TOO LONG QUERY");
  }

  double perform_query_time = -FUNC4 ();
  res = FUNC7();
  perform_query_time += FUNC4 ();

  if (SQH_SIZE < SEARCH_QUERY_HEAP_SIZE || SQH[1].cpu_time < perform_query_time) {
    struct search_query_heap_en E;
    E.query = FUNC29 (len+1);
    FUNC11 (E.query, key);
    E.cpu_time = perform_query_time;
    E.res = res;
    FUNC9 (&E);
  }
  /*
  if (perform_query_time > max_perform_query_time) {
    max_perform_query_time = perform_query_time;
    strncpy (worst_search_query, key, STATS_SEARCH_QUERY_BUFFER_SIZE - 1);
    worst_search_query[STATS_SEARCH_QUERY_BUFFER_SIZE - 1] = 0;
    worst_search_query_res = res;
  }
  */

  if (verbosity > 0) {
    FUNC2 (stderr, "result = %d\n", res);
  }

  struct value_buffer b;
  if (!FUNC26 (&b, c, key - dog_len, len + dog_len, Q_raw, 64)) {
    return -1;
  }
  if (Q_hash_group_mode) {
    FUNC0 (Q_limit > 0);
    b.output_int (&b, R_tot);
    for (i = 0; i < R_cnt; i++) {
      if (!FUNC25 (&b) ) { return -1; }
      b.output_char (&b, ',');
      b.output_item_id (&b, R[i]->item_id);
      b.output_char (&b, ',');
      b.output_int (&b, FUNC1 (RR[i]));
      b.output_char (&b, ',');
      b.output_hash (&b, FUNC3 (R[i]));
    }
    return FUNC27 (&b);
  }

  b.output_int (&b, res);
  for (i = 0; i < R_cnt; i++) {
    if (!FUNC25 (&b) ) { return -1; }
    b.output_char (&b, ',');
    b.output_item_id (&b, R[i]->item_id);
    b.output_char (&b, ',');
    b.output_int (&b, FUNC1 (RR[i]));
  }
  return FUNC27 (&b);
}