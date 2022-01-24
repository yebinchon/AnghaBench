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
typedef  int /*<<< orphan*/  nb_iterator_t ;

/* Variables and functions */
 int MSG_STD_BUFFER ; 
 int /*<<< orphan*/ * TL_IN_NBIT ; 
 int /*<<< orphan*/  TL_OUT_RAW_MSG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3 (int len, int advance) {
  if (advance) {
    while (len) {
      int x = len >= MSG_STD_BUFFER ? MSG_STD_BUFFER : len; 
      void *buf = FUNC2 (TL_OUT_RAW_MSG, x);
      FUNC0 (buf);
      FUNC0 (FUNC1 (TL_IN_NBIT, buf, x) == x);
      len -= x;
    }
  } else {
    nb_iterator_t R = *TL_IN_NBIT;
    while (len) {
      int x = len >= MSG_STD_BUFFER ? MSG_STD_BUFFER : len; 
      void *buf = FUNC2 (TL_OUT_RAW_MSG, x);
      FUNC0 (buf);
      FUNC0 (FUNC1 (&R, buf, x) == x);
      len -= x;
    }
  }
}