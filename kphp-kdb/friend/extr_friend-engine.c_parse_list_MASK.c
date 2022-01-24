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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6 (int *Res, int max_size, netbuffer_t *In, int bytes) {
  char *ptr = 0, *ptr_e = 0;
  int r = 0, s = 0, x;
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
    while (ptr < ptr_e && *ptr >= '0' && *ptr <= '9') {
      if (x >= 0x7fffffff / 10) {
        return -1;
      }
      x = x*10 + (*ptr++ - '0');
      r++;
      bytes--;
    }
    if (s >= max_size || (bytes > 0 && (ptr == ptr_e || *ptr != ','))) {
      FUNC1 (In, r + bytes);
      return -1;
    }
    Res[s++] = x;
    if (!bytes) {
      FUNC0 (In, r);
      return s;
    }
    FUNC2 (*ptr == ',');
    ptr++;
    r++;
  } while (--bytes > 0);
  FUNC2 (!bytes);
  FUNC0 (In, r);
  return s;
}