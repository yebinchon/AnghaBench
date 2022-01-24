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
struct connection {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (struct connection*,char const*,char*,int) ; 
 size_t FUNC5 (char*,char*,int const) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 

int FUNC7 (struct connection *c, const char *key, int key_len, int res, int mode, const int *R, int R_cnt) {
  int w, i;
  static char buff[16];

  if (verbosity > 0) {
    FUNC1 (stderr, "result = %d\n", res);
  }

  if (!R_cnt) {
    if (res == 0x7fffffff) {
      return FUNC4 (c, key, "", 0);
    }
    if (mode < 0) {
      w = 4;
      *((int *) buff) = res;
    } else {
      w = FUNC5 (buff, "%d", res);
    }
    return FUNC4 (c, key, buff, w);
  }

  FUNC6 (&c->Out, "VALUE ", 6);
  FUNC6 (&c->Out, key, key_len);

  char *ptr = FUNC2 (&c->Out, 512);
  if (!ptr) return -1;
  char *s = ptr + 480;

  FUNC3 (ptr, " 0 .........\r\n", 14);
  char *size_ptr = ptr + 3;

  ptr += 14;
  if (res != 0x7fffffff) {
    if (mode >= 0) {
      w = FUNC5 (ptr, "%d", res);
    } else {
      w = 4;
      *((int *) ptr) = res;
    }
    ptr += w;
  } else {
    w = 0;
  }

  for (i = 0; i < R_cnt; i++) {
    int t;
    if (ptr >= s) {
      FUNC0 (&c->Out, ptr - (s - 480));
      ptr = FUNC2 (&c->Out, 512);
      if (!ptr) return -1;
      s = ptr + 480;
    }
    if (mode >= 0) {
      if (i || res != 0x7fffffff) {
        *ptr++ = ',';  w++;
      }
      w += t = FUNC5 (ptr, "%d", R[i]);
    } else {
      w += t = 4;
      *((int *) ptr) = R[i];
    }
    ptr += t;
  }
  size_ptr[FUNC5 (size_ptr, "% 9d", w)] = '\r';
  FUNC3 (ptr, "\r\n", 2);
  ptr += 2;
  FUNC0 (&c->Out, ptr - (s - 480));

  return 0;
}