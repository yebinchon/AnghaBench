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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const) ; 

int FUNC2 (int *Res, const int max_size, const int arity, const char *ptr, const int bytes) {
  const char *ptr_e = ptr + bytes;
  int s = 0, t = 0, x, sgn;

  while (ptr < ptr_e) {
    x = 0;
    sgn = 0;

    if (*ptr == '-') {
      ptr++;
      sgn = 1;
    }
    
    if (!FUNC1 (*ptr)) {
      return -1;
    }

    while (ptr < ptr_e && FUNC1 (*ptr)) {
      if (x > 0x7fffffff / 10) {
        return -1;
      }
      x = x*10 + (*ptr++ - '0');
      if (x < 0) {
        return -1;
      }
    }
    if (sgn) {
      x = -x;
    }
    if (++t == arity) {
      t = 0;
    }
    if (s >= max_size || (ptr < ptr_e && *ptr != (t ? '_' : ','))) {
      return -1;
    }
    Res[s++] = x;
    if (ptr == ptr_e) {
      return t ? -1 : s / arity;
    }
    FUNC0 (*ptr == (t ? '_' : ','));
    ptr++;
  };

  FUNC0 (ptr == ptr_e);
  return t ? -1 : s / arity;
}