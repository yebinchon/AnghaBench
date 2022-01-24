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
 size_t ALBUM_TYPE ; 
 int /*<<< orphan*/  NOAIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__ debug_error ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  index_mode ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  return_fields ; 
 int /*<<< orphan*/ * types ; 
 scalar_t__ FUNC5 (TYPE_1__*,int,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  write_only ; 

int FUNC7 (int uid, int aid, const int force, char *fields, char **result) {
  FUNC0 (!index_mode && !write_only);

  user *u = FUNC1 (uid);
  int fields_n = FUNC3 (&types[ALBUM_TYPE], fields);

  if (u == NULL || fields_n < 0) {
    return 0;
  }

  FUNC4 (u, u->local_id, NOAIO);
  if (!FUNC6 (u)) {
    return -2;
  }

  actual_object o;
  if (FUNC5 (u, aid, force, &o) < 0) {
    return 0;
  }

  *result = FUNC2 (&o, ALBUM_TYPE, return_fields, fields_n);

  if (debug_error) {
    return 0;
  }

  return 1;
}