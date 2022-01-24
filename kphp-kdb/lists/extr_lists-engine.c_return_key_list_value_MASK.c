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
 int PTR_INTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int object_id_ints ; 
 int FUNC4 (struct connection*,char const*,char*,int) ; 
 size_t FUNC5 (char*,char*,int const) ; 
 char* stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 

int FUNC7 (struct connection *c, const char *key, int key_len, int res, int mode, const int *R, int R_cnt, int rec_size, int text_offset, int long_offset) {
  int w, i, j = 0;

  if (verbosity > 0) {
    FUNC1 (stderr, "result = %d\n", res);
  }

  if (!R_cnt) {
    if (mode < 0) {
      w = 4;
      *((int *) stats_buff) = res;
    } else {
      w = FUNC5 (stats_buff, "%d", res);
    }
    return FUNC4 (c, key, stats_buff, w);
  }

  FUNC6 (&c->Out, "VALUE ", 6);
  FUNC6 (&c->Out, key, key_len);

  char *ptr = FUNC2 (&c->Out, 1024);
  if (!ptr) return -1;
  char *s = ptr + 512;

  FUNC3 (ptr, " 0 .........\r\n", 14);
  char *size_ptr = ptr + 3;

  ptr += 14;
  if (mode >= 0) {
    w = FUNC5 (ptr, "%d", res);
  } else {
    w = 4;
    *((int *) ptr) = res;
  }
  ptr += w;
  for (i = 0; i < R_cnt; i++) {
    int t;
    if (ptr >= s) {
      FUNC0 (&c->Out, ptr - (s - 512));
      ptr = FUNC2 (&c->Out, 1024);
      if (!ptr) return -1;
      s = ptr + 512;
    }
    if (mode >= 0) {
      *ptr++ = (j > 0 && j < object_id_ints ? ':' : ',');
      w++;
      if (j == text_offset) {
        char *p = *((char **) (R + i));
        t = R[i + PTR_INTS];
        int k;
        for (k = 0; k < t; k++) {
          if (p[k] == ',') { ptr[k] = 12; }
          else if (p[k] == 12) { ptr[k] = ' '; }
          else { ptr[k] = p[k]; }
        }
        w += t;
        j += PTR_INTS;
        i += PTR_INTS;
      } else if (j == long_offset) {
        w += t = FUNC5 (ptr, "%lld", *(long long *) (R + i));
        i++;
        j++;
      } else {
        w += t = FUNC5 (ptr, "%d", R[i]);
      }
    } else {
      w += t = 4;
      *((int *) ptr) = R[i];
    }
    if (++j == rec_size) {
      j = 0;
    }
    ptr += t;
  }
  size_ptr[FUNC5 (size_ptr, "% 9d", w)] = '\r';
  FUNC3 (ptr, "\r\n", 2);
  ptr += 2;
  FUNC0 (&c->Out, ptr - (s - 512));

  return 0;
}