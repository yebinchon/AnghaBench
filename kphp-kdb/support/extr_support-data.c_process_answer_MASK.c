#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lev_support_add_answer {int user_id; int mark; char* question_with_answer; } ;
typedef  int /*<<< orphan*/  set_int ;
typedef  TYPE_1__* answers_list_ptr ;
struct TYPE_4__ {int q_hashes_len; int* q_hashes; struct lev_support_add_answer* E; } ;

/* Variables and functions */
 int answers_cnt ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* buf ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int* FUNC2 (int) ; 
 int* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__** FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int) ; 
 int /*<<< orphan*/  q_cnt ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int* FUNC15 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  user_id_to_answer ; 
 int /*<<< orphan*/  word_to_answers ; 

void FUNC16 (answers_list_ptr answer, int add) {
  struct lev_support_add_answer *E = answer->E;
  int user_id = E->user_id;

  FUNC0 (add == -1 || add == 1);

  if (add == 1) {
    *FUNC7 (&user_id_to_answer, user_id) = answer;
  } else {
    FUNC8 (&user_id_to_answer, user_id);
  }

  answers_cnt += add;

  int cnt = add * (2 * E->mark + 1);
  if (E->mark < 0) {
    cnt = add;
  }
  cnt = add;

  if (add == 1) {
    char *a = E->question_with_answer;
    while (*a != '\t') {
      a++;
    }
    FUNC9 (buf, E->question_with_answer, a - E->question_with_answer);
    buf[a - E->question_with_answer] = 0;

    int *vq = FUNC15 (buf, &answer->q_hashes_len, 0);
    int size = sizeof (int) * (answer->q_hashes_len + 1);
    answer->q_hashes = FUNC2 (size);
    FUNC9 (answer->q_hashes, vq, size);
  }

  int *vq = answer->q_hashes;

  int i;
  for (i = 0; vq[i]; i++) {
    int *t = FUNC3 (&q_cnt, vq[i]);
    set_int *s = FUNC5 (&word_to_answers, vq[i]);
    if (*t == 0) {
      FUNC13 (s);
    }

    if (add == -1) {
      int old_used = FUNC14 (s);
      FUNC11 (s, user_id);
      FUNC0 (FUNC14 (s) == old_used - 1 && old_used > 0);
    } else {
      int old_used = FUNC14 (s);
      FUNC10 (s, user_id);
      FUNC0 (FUNC14 (s) == old_used + 1);
    }

    *t += cnt;
    FUNC0 (*t >= 0);

    if (*t == 0) {
      FUNC0 (FUNC14 (s) == 0);
      FUNC12 (s);
      FUNC6 (&word_to_answers, vq[i]);
    }
    if (*t == 0) {
      FUNC4 (&q_cnt, vq[i]);
    }
  }

  if (add == -1) {
    int size = sizeof (int) * (answer->q_hashes_len + 1);
    FUNC1 (answer->q_hashes, size);
  }
}