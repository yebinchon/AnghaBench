#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  local_id; } ;
typedef  TYPE_1__ user ;
typedef  int /*<<< orphan*/  predicate ;

/* Variables and functions */
 size_t ALBUM_TYPE ; 
 int MAX_RESULT ; 
 int /*<<< orphan*/  NOAIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,int) ; 
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
 int FUNC10 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  write_only ; 

int FUNC15 (int uid, int offset, int limit, char *fields, const int reverse, const int count, char *condition, char **result) {
  FUNC2 ("get_albums (uid = %d) (fields = %s) (offset = %d) (limit = %d)\n", uid, fields, offset, limit);
  FUNC0 (!index_mode && !write_only);

  *result = debug_buff;
  FUNC4();

  user *u = FUNC1 (uid);
  int fields_n = FUNC7 (&types[ALBUM_TYPE], fields);

  if (u == NULL || fields_n < 0) {
    return 0;
  }

  if (offset < 0) {
    offset = 0;
  }

  if (offset > MAX_RESULT) {
    offset = MAX_RESULT;
  }

  if (limit <= 0) {
    limit = 0;
  }

  if (limit > MAX_RESULT) {
    limit = MAX_RESULT;
  }

  FUNC8 (u, u->local_id, NOAIO);
  if (!FUNC14 (u)) {
    return -2;
  }

  predicate *pred = FUNC9 (condition, ALBUM_TYPE);

  int i, ii, total, real_total;
  if (reverse) {
    total = FUNC12 (u, pred);
    real_total = total;
    FUNC0 (total >= 0);

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
      total = FUNC12 (u, pred);
      real_total = total;
      FUNC0 (total >= 0);

      total -= offset;

      if (total < 0) {
        total = 0;
      }
    } else {
      total = FUNC10 (u, offset, limit, pred);
      real_total = FUNC11 (u);
      FUNC0 (total >= 0);
    }
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

    int aid = FUNC5 (&result_obj[i]);

    if (fields_n == 0) {
      FUNC3 ("i:%d;i:%d;", aid, count ? FUNC13 (u, aid) : aid);
    } else {
      FUNC3 ("i:%d;%s", aid, FUNC6 (&result_obj[i], ALBUM_TYPE, return_fields, fields_n));
    }
  }
  FUNC3 ("}");

  if (debug_error) {
    return 0;
  }

  return 1;
}