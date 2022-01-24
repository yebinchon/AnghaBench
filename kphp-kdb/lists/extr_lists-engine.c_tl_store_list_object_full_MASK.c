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
 int /*<<< orphan*/  PTR_INTS ; 
 int VALUE_INTS ; 
 int object_id_ints ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 

void FUNC4 (const int *R, const int *R_end, int mode, int res) {
  const int *Rptr = R;
  int i = 0;
  for (i = 0; i < res; i++) {
    if (mode & (1 << 15)) {
      FUNC3 ((void *)Rptr, 4 * object_id_ints);
    }
    Rptr += object_id_ints;
    if (mode & 64) { FUNC0 (*(Rptr ++)); }
    if (mode & 128) { FUNC0 (*(Rptr ++)); }
    if (mode & 256) {
      FUNC1 (*Rptr);
      Rptr ++;
    }
    if (mode & 512) {
      if (VALUE_INTS == 2) {
        FUNC1 (*(long long *)Rptr);
        Rptr += 2;
      } else {
        FUNC1 (*Rptr);
        Rptr ++;
      }
    }
    if (mode & 1024) { 
      char *text = *(char **)Rptr;
      Rptr += PTR_INTS;
      int text_len = *(Rptr ++);
      FUNC2 (text, text_len);
    }
  }
}