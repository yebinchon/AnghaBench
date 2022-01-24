#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int size; int n; TYPE_2__* e; } ;
typedef  TYPE_1__ qhash_table ;
typedef  int /*<<< orphan*/  entry_t ;
struct TYPE_14__ {int spam; int ham; } ;
struct TYPE_13__ {scalar_t__ h; TYPE_1__ cnt; TYPE_8__ val; } ;
typedef  TYPE_2__ bayes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * fd ; 
 int max_words ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 TYPE_8__* FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC6 (int) ; 
 long long FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,long long) ; 

long long FUNC8 (bayes global_bayes) {
  qhash_table *old_table = &global_bayes.cnt;
  int old_size = global_bayes.cnt.size, old_n = global_bayes.cnt.n, new_n;

  new_n = 3 * old_size / 2;
  if (new_n < max_words) {
    new_n = max_words;
  }

  FUNC0 (new_n >= old_table->n);
  int regenerate = (new_n > old_table->n);

  qhash_table *new_table;
  if (!regenerate) {
    new_table = old_table;
  } else {
    int i, limit = new_n / 40000000;

//    fprintf (stderr, "regenerate : limit(%d)\n", limit);

    if (limit >= 1) {
      int new_size = 0;

      for (i = 0; i < old_table->n; i++) {
        if (old_table->e[i].h != 0 && old_table->e[i].val.spam + old_table->e[i].val.ham > limit) {
					new_size++;
        }
      }
      new_n = 3 * new_size / 2;
      if (new_n < max_words) {
        new_n = max_words;
      }
      global_bayes.cnt.size = new_size;

//      fprintf (stderr, "regenerate : old_n(%d) new_n(%d)\n", old_size, new_size);
    }

    new_table = FUNC6 (sizeof (qhash_table));
    FUNC4 (new_table);
    FUNC5 (new_table, new_n);

    for (i = 0; i < old_table->n; i++) {
      if (old_table->e[i].h != 0 && old_table->e[i].val.spam + old_table->e[i].val.ham > limit) {
        *FUNC2 (new_table, old_table->e[i].h) = old_table->e[i].val;
      }
    }
    global_bayes.cnt.n = new_n;
  }

  long long size1 = 3 * sizeof (int) + 2 * sizeof (long long);
  FUNC0 (FUNC7 (fd[1], &global_bayes, size1) == size1);

  long long size2 = sizeof (entry_t) * new_table->n;
  FUNC0 (FUNC7 (fd[1], new_table->e, size2) == size2);

  if (regenerate) {
    FUNC3 (new_table);
    FUNC1 (new_table, sizeof (qhash_table));
    global_bayes.cnt.n = old_n;
    global_bayes.cnt.size = old_size;
  }
  return size1 + size2;
}