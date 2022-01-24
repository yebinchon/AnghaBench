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
 int /*<<< orphan*/  FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* location_buf ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 char mode ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int,int,unsigned long long) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ write_only ; 

int FUNC10 (user *u, int pid, int dir) {
  if ((dir != 1 && dir != 3) || !FUNC4 (pid)) {
    return 0;
  }

  if (write_only) {
    return 1;
  }

  FUNC3 (FUNC7 (u));

  int len;
  char *loc = FUNC8 (u, pid, 0, 1, &len);

  if (loc == NULL) {
    return 0;
  }

  char *s = location_buf;

  if (len > 0 && loc[0] < 0) {
    int cur = -(loc[0] + mode) + 4 * sizeof (int) + 1;
    FUNC5 (s, loc, cur);
    s += cur;
    loc += cur;

    int cur_dir = 0;
    if ((s[-1] >= '1' && s[-1] <= '3') && (s[-2] >= 'w' && s[-2] <= 'z')) {
      cur_dir = s[-1];
      s--;
      (*location_buf)++;
    }

    if (s[-1] < 'w' || s[-1] > 'z') {
      *s++ = 'x';
      (*location_buf)--;
    }

    cur_dir += dir;
    if (cur_dir % 4) {
      *s++ = '0' + cur_dir % 4;
      (*location_buf)--;
    }
  }
  char *t = s++;

  char count = 0;
  int pass;
  int new_vid = 0, new_local_id = 0;
  char new_size = 0;
  char *loc_begin = loc;

  for (pass = 0; pass < 2; pass++) {
    loc = loc_begin;
    int old_vid = 0, old_local_id = 0, old_extra = 0, i;
    char old_size = 0, diff;
    unsigned long long old_secret = 0;

    for (i = len ? *loc++ : 0; i > 0; i--) {
      FUNC0(loc, old_size);
      FUNC3 (old_size);
      if (old_size < 0) {
        old_size *= -1;
        FUNC0(loc, diff);
        old_local_id += diff;
      } else {
        FUNC1(loc, old_vid);
        FUNC1(loc, old_local_id);
      }
      FUNC1(loc, old_extra);
      FUNC2(loc, old_secret);

      int new_dir = (old_size >> 5) + dir;
      if ((new_dir >= 4) ^ pass) {
        FUNC6 (s, ((new_dir & 3) << 5) + (old_size & 31), old_vid, old_local_id, old_extra, old_secret);
      }
    }
  }
  *t = count;
  FUNC3 ((len == 0 && count == 0) || *loc_begin == count);

  return FUNC9 (u, pid, 0, location_buf, (s - location_buf));
}