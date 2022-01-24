#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  entry_t ;
struct TYPE_7__ {int n; int size; TYPE_1__* e; } ;
struct TYPE_6__ {TYPE_3__ cnt; } ;
typedef  TYPE_1__ bayes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int max_words ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC5 (bayes *global_bayes) {
  int size = 3 * sizeof (int) + 2 * sizeof (long long);
  int r = FUNC4 (fd[0], global_bayes, size);
  if (r != size) {
    FUNC1 (stderr, "error reading header from index file: read %d bytes instead of %d at position ???: %m\n", r, size);
    FUNC0 (r == size);
  }

  int new_n = global_bayes->cnt.n,
      new_size = global_bayes->cnt.size;
  if (new_size > max_words) {
    max_words = new_size;
  }

  FUNC2 (&global_bayes->cnt);
  FUNC3 (&global_bayes->cnt, new_n);
  global_bayes->cnt.size = new_size;

  size = sizeof (entry_t) * new_n;
  r = FUNC4 (fd[0], global_bayes->cnt.e, size);
  if (r != size) {
    FUNC1 (stderr, "error reading header from index file: read %d bytes instead of %d at position ???: %m\n", r, size);
    FUNC0 (r == size);
  }
}