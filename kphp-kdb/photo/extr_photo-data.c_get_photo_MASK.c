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
struct TYPE_6__ {int /*<<< orphan*/  local_id; } ;
typedef  TYPE_1__ user ;
typedef  int /*<<< orphan*/  actual_object ;

/* Variables and functions */
 int /*<<< orphan*/  NOAIO ; 
 size_t PHOTO_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 scalar_t__ debug_error ; 
 char* FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  index_mode ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  return_fields ; 
 int /*<<< orphan*/ * types ; 
 scalar_t__ FUNC6 (TYPE_1__*,int,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  write_only ; 

int FUNC8 (int uid, int pid, const int force, char *fields, char **result) {
  FUNC0 (!index_mode && !write_only);

  user *u = FUNC2 (uid);
  int fields_n = FUNC4 (&types[PHOTO_TYPE], fields);

  if (u == NULL || fields_n < 0 || !FUNC1 (pid)) {
    return 0;
  }

  FUNC5 (u, u->local_id, NOAIO);
  if (!FUNC7 (u)) {
    return -2;
  }

  actual_object o;
  if (FUNC6 (u, pid, force, &o) < 0) {
    return 0;
  }

  *result = FUNC3 (&o, PHOTO_TYPE, return_fields, fields_n);

  if (debug_error) {
    return 0;
  }

  return 1;
}