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
 char* location_buf ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char mode ; 
 int /*<<< orphan*/  FUNC5 (char*,char,int,int,int,unsigned long long) ; 
 char FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int,int,int,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int,char*,int) ; 
 scalar_t__ write_only ; 

int FUNC9 (user *u, int pid, int original, char size, int rotate) {
  if ((size != -1 && size < 'a') || size > 'z' || rotate < -1 || rotate > 3) {
    return 0;
  }

  if (write_only) {
    return 1;
  }

  FUNC3 (FUNC6 (u));

  int len;
  char *loc = FUNC7 (u, pid, original, 1, &len);

  if (loc == NULL) {
    return 0;
  }

  char *s = location_buf;

  if (len > 0 && loc[0] < 0) {
    int cur = -(loc[0] + mode) + 4 * sizeof (int) + 1;
    FUNC4 (s, loc, cur);
    s += cur;
    loc += cur;
  }
  char *t = s++;

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
    if ((rotate != -1 && rotate != (old_size >> 5)) || (size != -1 && size - 'a' + 1 != (old_size & 31))) {
      FUNC5 (s, old_size, old_vid, old_local_id, old_extra, old_secret);
    }
  }
  *t = count;

  return FUNC8 (u, pid, original, location_buf, (s - location_buf));
}