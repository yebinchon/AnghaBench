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

/* Variables and functions */
 int /*<<< orphan*/  NOAIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bad_requests ; 
 int /*<<< orphan*/  FUNC1 (long long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,long long) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int) ; 

int FUNC10 (int user_id, int type, long long object_id, char **text) {
  if (!FUNC3 (user_id) || !FUNC2 (type) || !FUNC1 (object_id)) {
    bad_requests++;
    return -1;
  }

  int local_user_id = FUNC6 (user_id);
  if (local_user_id == 0) {
    return 0;
  }
  FUNC0 (local_user_id > 0);

  user *u = FUNC5 (user_id);
  FUNC0 (u != NULL);

  if (FUNC7 (u, local_user_id, NOAIO) == NULL) {
    return -2;
  }

  int local_id = FUNC8 (u, type, object_id);
  if (!local_id) {
    return 0;
  }

  char *name = FUNC9 (u, local_id);
  if (name == NULL) {
    return 0;
  }

  *text = FUNC4 (name);
  return 1;
}