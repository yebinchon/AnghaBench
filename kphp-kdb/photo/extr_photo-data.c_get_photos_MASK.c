#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  local_id; } ;
typedef  TYPE_1__ user ;
typedef  int /*<<< orphan*/  predicate ;

/* Variables and functions */
 int MAX_RESULT ; 
 int /*<<< orphan*/  NOAIO ; 
 size_t PHOTO_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int,int const) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* debug_buff ; 
 scalar_t__ debug_error ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  index_mode ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (char*,size_t) ; 
 int /*<<< orphan*/ * result_obj ; 
 int /*<<< orphan*/  return_fields ; 
 int /*<<< orphan*/ * types ; 
 int FUNC10 (TYPE_1__*,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__*,int) ; 
 int FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  write_only ; 

int FUNC14 (int uid, int aid, int offset, int limit, char *fields, const int reverse, const int count, char *condition, char **result) {
  FUNC2 ("get photos: (uid = %d) (aid = %d) (offset = %d) (limit = %d) (reverse = %d)\n", uid, aid, offset, limit, reverse);
  FUNC0 (!index_mode && !write_only);

  *result = debug_buff;
  FUNC4();

  user *u = FUNC1 (uid);
  int fields_n = FUNC7 (&types[PHOTO_TYPE], fields);

  if (u == NULL || fields_n < 0) {
    return 0;
  }

  if (offset < 0) {
    offset = 0;
  }

  if (offset > MAX_RESULT) {
    offset = MAX_RESULT;
  }

  if (limit < 0) {
    limit = 0;
  }

  if (limit > MAX_RESULT) {
    limit = MAX_RESULT;
  }

  FUNC8 (u, u->local_id, NOAIO);
  if (!FUNC13 (u)) {
    return -2;
  }

  predicate *pred = FUNC9 (condition, PHOTO_TYPE);

  int i, ii, total, real_total;
  if (reverse) {
    total = FUNC12 (u, aid, pred);
    real_total = total;

    if (total < 0) {
      return 0;
    }

    offset = total - offset - limit;
    if (offset < 0) {
      limit += offset;
      offset = 0;
    }
    if (limit < 0) {
      limit = 0;
    }
  } else {
    if (count && pred != NULL) {
      total = FUNC12 (u, aid, pred);
      real_total = total;

      if (total < 0) {
        return 0;
      }

      total -= offset;

      if (total < 0) {
        total = 0;
      }
    } else {
      total = FUNC10 (u, aid, offset, limit, pred);
      real_total = FUNC11 (u, aid);
    }
  }

  if (total < 0) {
    return 0;
  }
  if (total > limit) {
    total = limit;
  }

  FUNC3 ("a:%d:{", total + count);
  if (count) {
    FUNC3 ("s:5:\"count\";i:%d;", real_total);
  }
  for (ii = 0; ii < total; ii++) {
    if (reverse) {
      i = total - ii - 1 + offset;
    } else {
      if (count && pred != NULL) {
        i = ii + offset;
      } else {
        i = ii;
      }
    }

    int pid = FUNC5 (&result_obj[i]);

    if (fields_n == 0) {
      FUNC3 ("i:%d;i:%d;", pid, pid);
    } else {
      FUNC3 ("i:%d;%s", pid, FUNC6 (&result_obj[i], PHOTO_TYPE, return_fields, fields_n));
    }
  }
  FUNC3 ("}");

  if (debug_error) {
    return 0;
  }

  return 1;
}