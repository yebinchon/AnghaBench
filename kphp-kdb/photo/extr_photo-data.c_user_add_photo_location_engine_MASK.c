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
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* location_buf ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 char mode ; 
 int /*<<< orphan*/  FUNC6 (char*,char,int,int,int,unsigned long long) ; 
 char FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int,int,int,int*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int,char*,int) ; 
 scalar_t__ write_only ; 

int FUNC10 (user *u, int pid, int original, char size, int rotate, int vid, int local_id, int extra, unsigned long long secret) {
  if (vid <= 0 || local_id <= 0 || !FUNC4 (pid) || size < 'a' || size > 'z' || rotate < 0 || rotate > 3) {
    return 0;
  }

  if (write_only) {
    return 1;
  }

  FUNC3 (FUNC7 (u));

//  dbg ("user_add_photo_location_engine (uid = %d) (pid = %d) (size = %c) (vid = %d) (local_id = %d) (extra = %d) (secret = %llu)\n",
//       u->id, pid, size, vid, local_id, extra, secret);
  int len;
  char *loc = FUNC8 (u, pid, original, 1, &len);

  if (loc == NULL) {
    return 0;
  }

  char *s = location_buf;

  if (len > 0 && loc[0] < 0) {
    int cur = -(loc[0] + mode) + 4 * sizeof (int) + 1;
    FUNC5 (s, loc, cur);
    s += cur;
    loc += cur;
  }
  char *t = s++;

  size -= 'a' - 1;
  size += (rotate << 5);

  char count = 0;
  int old_vid = 0, old_local_id = 0, old_extra = 0, new_vid = 0, new_local_id = 0, i;
  char old_size = 0, new_size = 0, diff;
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
    if (size <= old_size) {
      FUNC6 (s, size, vid, local_id, extra, secret);

      if (size != old_size) {
        FUNC6 (s, old_size, old_vid, old_local_id, old_extra, old_secret);
      }

      size = 127;
    } else {
      FUNC6 (s, old_size, old_vid, old_local_id, old_extra, old_secret);
    }
  }
  if (size != 127) {
    FUNC6 (s, size, vid, local_id, extra, secret);
  }
  *t = count;

  return FUNC9 (u, pid, original, location_buf, (s - location_buf));
}