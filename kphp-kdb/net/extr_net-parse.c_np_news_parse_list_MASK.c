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
struct nb_reader {int dummy; } ;
typedef  int /*<<< orphan*/  netbuffer_t ;
typedef  int /*<<< orphan*/  nb_iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct nb_reader*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct nb_reader*,int /*<<< orphan*/ *,int const) ; 
 int const FUNC3 (int /*<<< orphan*/ *,int*,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5 (int *Res, const int max_size, const int arity, netbuffer_t *In, const int bytes) {
  if (!bytes) {
    return 0;
  }
  nb_iterator_t it;
  if (bytes >= 4) {
    int x;
    FUNC4 (&it, In);
    if (FUNC3 (&it, &x, 4) != 4) {
      FUNC0 (In, bytes);
      return -1;
    }
    if (x == 0x30303030 + ((arity - 1) << 24)) {
      x = (bytes - 4) >> 2;
      
      if ((bytes & 3) || max_size < x || x % arity || FUNC3 (&it, &Res[0], bytes - 4) != bytes - 4) {
        FUNC0 (In, bytes);
        return -1;
      }
      
      FUNC0 (In, bytes);
      return x / arity;
    }
  }
  
  struct nb_reader jt;
  FUNC2 (&jt, In, bytes);
  int ch = 0, t = 0, s = 0;
  for (;;) {
    if (s >= max_size || !FUNC1 (&jt, &Res[s++], &ch)) {
      FUNC0 (In, bytes);
      return -1;
    }
    if (ch < 0) {
      break;
    }
    if (++t == arity) {
      t = 0;
    }
    if (ch != (t ? '_' : ',')) {
      FUNC0 (In, bytes);
      return -1;
    }
  }
  FUNC0 (In, bytes);
  return (s % arity) ? -1 : s / arity;
}