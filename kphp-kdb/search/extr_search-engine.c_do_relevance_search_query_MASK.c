#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct value_buffer {int /*<<< orphan*/  (* output_int ) (struct value_buffer*,int) ;int /*<<< orphan*/  (* output_char ) (struct value_buffer*,char) ;int /*<<< orphan*/  (* output_item_id ) (struct value_buffer*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* output_hash ) (struct value_buffer*,int /*<<< orphan*/ ) ;} ;
struct connection {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  item_id; } ;

/* Variables and functions */
 scalar_t__ Q_hash_group_mode ; 
 scalar_t__ Q_limit ; 
 TYPE_1__** R ; 
 int* RV ; 
 int R_cnt ; 
 int R_tot ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (char*,int*,int*,int) ; 
 int /*<<< orphan*/  relevance_search_queries ; 
 int FUNC4 (struct connection*,char const*,int,int,char*) ; 
 int /*<<< orphan*/  search_queries ; 
 int /*<<< orphan*/  FUNC5 (struct value_buffer*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct value_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct value_buffer*,char) ; 
 int /*<<< orphan*/  FUNC8 (struct value_buffer*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct value_buffer*,char) ; 
 int /*<<< orphan*/  FUNC10 (struct value_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct value_buffer*,char) ; 
 int /*<<< orphan*/  FUNC12 (struct value_buffer*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct value_buffer*,char) ; 
 int /*<<< orphan*/  FUNC14 (struct value_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct value_buffer*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct value_buffer*,char) ; 
 int /*<<< orphan*/  FUNC17 (struct value_buffer*) ; 
 int /*<<< orphan*/  FUNC18 (struct value_buffer*,struct connection*,char const*,int,int,int) ; 
 int FUNC19 (struct value_buffer*) ; 
 int /*<<< orphan*/  FUNC20 (int,char*,int,char const*,int) ; 

int FUNC21 (struct connection *c, const char *key, int len, int dog_len) {
  int i, Q_raw, err = 0;

  char *q_end = FUNC3 ((char *) key, &Q_raw, &err, 1);

  if (err < 0) {
    FUNC20 (1, "parse_relevance_search_query (%.*s) returns error code %d.\n", len, key, err);
    return FUNC4 (c, key, len, dog_len, q_end);
  }

  search_queries++;
  relevance_search_queries++;

  int res = FUNC1 (key, len);

  struct value_buffer b;
  if (!FUNC18 (&b, c, key - dog_len, len + dog_len, Q_raw, 64)) {
    return 0;
  }
  if (Q_hash_group_mode) {
    FUNC0 (Q_limit > 0);
    b.output_int (&b, R_tot);
    for (i = 0; i < R_cnt; i++) {
      if (!FUNC17 (&b) ) { return -1; }
      b.output_char (&b, ',');
      b.output_item_id (&b, R[i]->item_id);
      b.output_char (&b, ',');
      b.output_int (&b, RV[i]);
      b.output_char (&b, ',');
      b.output_hash (&b, FUNC2 (R[i]));
    }
    return FUNC19 (&b);
  }

  b.output_int (&b, res);
  for (i = 0; i < R_cnt; i++) {
    if (!FUNC17 (&b) ) { return -1; }
    b.output_char (&b, ',');
    b.output_item_id (&b, R[i]->item_id);
    b.output_char (&b, ',');
    b.output_int (&b, RV[i]);
  }
  return FUNC19 (&b);
}