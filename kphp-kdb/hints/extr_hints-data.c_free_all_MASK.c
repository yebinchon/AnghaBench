#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  rating ;

/* Variables and functions */
 int MAX_CNT ; 
 size_t MAX_HISTORY ; 
 int MAX_K ; 
 int MAX_RATING_NUM ; 
 int MAX_USR_SIZE ; 
 int /*<<< orphan*/  allocated_metafile_bytes ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  buff ; 
 int /*<<< orphan*/  buffer ; 
 scalar_t__ changes_memory ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  d ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * dp ; 
 int /*<<< orphan*/  exc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,long,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  h_buff ; 
 int /*<<< orphan*/  header ; 
 int /*<<< orphan*/  heap ; 
 size_t history_l ; 
 scalar_t__* history_q ; 
 size_t history_r ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  i_buff ; 
 scalar_t__ index_mode ; 
 int /*<<< orphan*/  intersect_buff ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  new_h ; 
 int /*<<< orphan*/  new_obj ; 
 int /*<<< orphan*/  object_buf ; 
 int /*<<< orphan*/  object_indexes ; 
 int /*<<< orphan*/  object_ratings ; 
 int /*<<< orphan*/  object_ratings_to_sort ; 
 int /*<<< orphan*/  objects_to_sort ; 
 int /*<<< orphan*/  objects_typeids_to_sort ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  type_ids ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  user_table ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  weight ; 

void FUNC13 (void) {
  if (verbosity) {
    while (FUNC12() != -1) {
    }

    while (history_l != history_r) {
      FUNC3 (history_q[history_l]);
      history_q[history_l++] = 0;
      if (history_l > MAX_HISTORY) {
        history_l = 0;
      }
    }

    FUNC4 (stderr, "Memory left : %ld\n", (long)(FUNC7() - FUNC11() - FUNC8() - FUNC9() -
             changes_memory - FUNC1()));
    FUNC4 (stderr, "memory used = %ld, trp_memory = %ld, htbl_memory = %ld, changes_memory = %ld, mtf = %d, vct = %ld\n",
             FUNC7(), (long)FUNC11(), (long)FUNC8(), (long)FUNC6(), allocated_metafile_bytes, (long)FUNC9());

    FUNC0 ((long)(FUNC7() - FUNC11() - FUNC8() - FUNC9() -
                   changes_memory - FUNC1()) == 0);

    FUNC2 (buff, (MAX_CNT + 1) * sizeof (int));

    if (index_mode) {
      FUNC2 (buffer, MAX_USR_SIZE);
      FUNC2 (new_obj, MAX_USR_SIZE);
      FUNC2 (type_ids, (MAX_CNT + 1) * sizeof (long long));
      FUNC2 (object_ratings, (MAX_CNT + 1) * sizeof (rating) * MAX_RATING_NUM);
      FUNC2 (object_ratings_to_sort, (MAX_CNT + 1) * sizeof (rating));
      FUNC2 (h_buff, MAX_USR_SIZE);

#ifdef HINTS
      dl_free (i_buff, MAX_USR_SIZE);
      dl_free (new_h, MAX_USR_SIZE);
      dl_free (object_indexes, (MAX_CNT + 1) * sizeof (int));
      dl_free (object_buf, MAX_USR_SIZE);
#endif
    } else {
      int i;
      for (i = 0; i <= MAX_K; i++) {
        FUNC2 (dp[i], (MAX_CNT + 1) * sizeof (rating));
      }
      FUNC2 (d, (MAX_CNT + 1) * sizeof (rating));
      FUNC2 (weight, MAX_CNT * sizeof (rating));

      FUNC2 (heap, (MAX_CNT + 1) * sizeof (int));
      FUNC2 (objects_typeids_to_sort, MAX_CNT * sizeof (long long));
      FUNC2 (objects_to_sort, MAX_CNT * sizeof (int));

#ifdef HINTS
      dl_free (intersect_buff, (MAX_CNT + 1) * sizeof (int));
#else
      FUNC2 (exc, (MAX_CNT + 1) * sizeof (int));
#endif
    }

    FUNC10 (&user_table);
    FUNC5 (&header);
  }
}