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
typedef  int /*<<< orphan*/  user ;
typedef  int /*<<< orphan*/  predicate ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int MAX_RESULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4 (user *u, int aid, int offset, int limit, predicate *pred) {
  FUNC0 (FUNC3 (u));

  if (offset < 0) {
    offset = 0;
  }

  if (offset > MAX_RESULT) {
    offset = MAX_RESULT;
  }

  if (limit <= 0) {
    return 0;
  }

  if (limit > MAX_RESULT) {
    limit = MAX_RESULT;
  }

  data *d = FUNC2 (u, aid);
  if (d == NULL) {
    return -1;
  }
  return FUNC1 (d, limit, offset, pred);
}