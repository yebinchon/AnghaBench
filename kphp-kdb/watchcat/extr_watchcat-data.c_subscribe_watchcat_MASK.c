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
typedef  int /*<<< orphan*/  wkey ;
typedef  int /*<<< orphan*/  watchcat_query_t ;
struct TYPE_4__ {int /*<<< orphan*/  keys; } ;
typedef  TYPE_1__ watchcat ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,long long,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (long long,int /*<<< orphan*/ *) ; 
 int my_verbosity ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

void FUNC8 (long long id, char *s, int q_id, int timeout) {
  if (my_verbosity > 1) {
    FUNC1 (stderr, "subscribe wathcat %lld (%s), q_id = %d, timeout = %d\n", id, s, q_id, timeout);
  }


  watchcat_query_t *query = FUNC0 (s);
  if (FUNC6 (query) == -1) {
    FUNC2 (query);
    return;
  }
  watchcat *w = FUNC3 (id, query);

  wkey *k = FUNC5 (&w->keys, q_id, FUNC4(), w);
  FUNC7 (k, timeout);
}