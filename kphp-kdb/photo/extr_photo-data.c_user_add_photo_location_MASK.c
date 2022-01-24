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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 char* location_buf ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char mode ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int,int,int,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int,char*,int) ; 
 scalar_t__ write_only ; 

int FUNC9 (user *u, int pid, int original, int sid, int sid2, int orig_oid, int orig_aid, char *photo) {
//  dbg ("user_add_photo_location %d: photo_id = %d, photo = %s\n", u->id, pid, photo);

  if (write_only) {
    return 1;
  }

  FUNC2 (FUNC6 (u));
  int l = FUNC5 (photo);
  FUNC2 (FUNC3 (photo, l));

  int len;
  char *loc = FUNC7 (u, pid, original, 1, &len);

  if (loc == NULL) {
    return 0;
  }

  char *s = location_buf;
  if (len > 0 && loc[0] < 0) {
    int cur = -(loc[0] + mode) + 4 * sizeof (int) + 1;
    len -= cur;
    loc += cur;
  }

  *s++ = -l - mode;
  FUNC0(s, sid);
  FUNC0(s, sid2);
  FUNC0(s, orig_oid);
  FUNC0(s, orig_aid);
  FUNC1(s, photo);

  if (len == 0) {
    *s++ = 0;
  } else {
    FUNC4 (s, loc, len);
  }

  return FUNC8 (u, pid, original, location_buf, (s - location_buf) + len);
}