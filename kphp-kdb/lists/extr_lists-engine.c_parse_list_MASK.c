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
typedef  int /*<<< orphan*/  netbuffer_t ;

/* Variables and functions */
 int MAX_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6 (int *Res, int max_size, netbuffer_t *In, int bytes, int have_weights, int *id_ints) {
  char *ptr = 0, *ptr_e = 0;
  #define MAX_INT 0x7fffffff
  int j = MAX_INT, r = 0, s = 0;
  int found = 0;
  *id_ints = -1;
  unsigned sgn;
  long long x;
  if (!bytes) {
    return 0;
  }
  do {
    if (ptr + 16 >= ptr_e && ptr_e < ptr + bytes) {
      FUNC0 (In, r);
      FUNC3 (In, bytes < 16 ? bytes : 16);
      ptr = FUNC4 (In);
      r = FUNC5 (In);
      if (r > bytes) {
        r = bytes;
      }
      ptr_e = ptr + r;
      r = 0;
    }
    FUNC2 (ptr < ptr_e);
    x = 0;
    sgn = 0x7fffffff;
    if (*ptr == '-' && ptr + 1 < ptr_e) {
      ptr++;
      sgn++;
      r++;
      bytes--;
    }
    if (*ptr < '0' || *ptr > '9') {
      FUNC1 (In, r + bytes);
      return -1;
    }
    while (ptr < ptr_e && *ptr >= '0' && *ptr <= '9') {
      x = x*10 + (*ptr++ - '0');
      if (x > sgn) {
        FUNC1 (In, r + bytes);
        return -1;
      }
      r++;
      bytes--;
    }
    if (s >= max_size || (bytes > 0 && (ptr == ptr_e))) {
      FUNC1 (In, r + bytes);
      return -1;
    }
    if (bytes > 0) {
      if (found) {
        if (*ptr != ((j == 1) ? ',' : (j == have_weights + 1) ? '#' : ':')) {
          FUNC1 (In, r + bytes);
          return -1;
        }
      } else {
        if (*ptr == (have_weights ? '#' : ',')) {
          found = 1;
          *id_ints = MAX_INT - j + 1;
          j = have_weights + 1;
        } else if (*ptr != ':') {
          FUNC1 (In, r + bytes);
          return -1;
        }
      }
    } else {
      if (!found && !have_weights) {
        found = 1;
        *id_ints = MAX_INT - j + 1;
        j = have_weights + 1;
      }
    }
    Res[s++] = (sgn & 1 ? x : -x);
    if (!bytes) {
      FUNC0 (In, r);
      return j == 1 ? s : -1;
    }
    FUNC2 (*ptr == (j == 1 ? ',' : (j == have_weights + 1 ? '#' : ':')));
    ptr++;
    r++;
    if (!--j) {
      j = *id_ints + have_weights;
    }
  } while (--bytes > 0);
  FUNC2 (!bytes);
  FUNC0 (In, r);
  return -1;
}