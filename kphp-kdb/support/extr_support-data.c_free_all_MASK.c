#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* answers_list_ptr ;
typedef  int /*<<< orphan*/  answers_list ;
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* prev; struct TYPE_6__* E; } ;

/* Variables and functions */
 TYPE_1__* answers ; 
 scalar_t__ answers_cnt ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,long) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  key_words ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  q_cnt ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  user_id_to_answer ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  word_to_answers ; 

void FUNC13 (void) {
  if (verbosity) {
    while (answers_cnt > 0) {
      FUNC0 (answers->next != answers);
      FUNC11 (answers->next, -1);

      answers_list_ptr next = answers->next;
      FUNC1 (next->E, FUNC4 (next->E));
      answers->next = next->next;
      answers->next->prev = answers;

      FUNC1 (next, sizeof (answers_list));
    }
    FUNC0 (answers->next == answers);

    FUNC0 (FUNC6 (&q_cnt) == 0);
    FUNC0 (FUNC10 (&user_id_to_answer) == 0);
    FUNC0 (FUNC8 (&word_to_answers) == 0);

    FUNC12 (&key_words);
    FUNC5 (&q_cnt);
    FUNC9 (&user_id_to_answer);
    FUNC7 (&word_to_answers);

    FUNC1 (answers, sizeof (answers_list));

    FUNC3 (stderr, "Memory left: %ld\n", (long)FUNC2());
    FUNC0 (FUNC2() == 0);
  }
}