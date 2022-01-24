#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nb_iterator_t ;
struct TYPE_2__ {int /*<<< orphan*/  In; } ;

/* Variables and functions */
 int MSG_STD_BUFFER ; 
 TYPE_1__* TL_IN_CONN ; 
 int /*<<< orphan*/  TL_OUT_RAW_MSG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC6 (int len, int advance) {
  if (advance) {
    while (len) {
      int x = len >= MSG_STD_BUFFER ? MSG_STD_BUFFER : len; 
      void *buf = FUNC5 (TL_OUT_RAW_MSG, x);
      FUNC0 (buf);
      FUNC0 (FUNC4 (&TL_IN_CONN->In, buf, x) == x);
      len -= x;
    }
  } else {
    nb_iterator_t R;
    FUNC3 (&R, &TL_IN_CONN->In);
    while (len) {
      int x = len >= MSG_STD_BUFFER ? MSG_STD_BUFFER : len; 
      void *buf = FUNC5 (TL_OUT_RAW_MSG, x);
      FUNC0 (buf);
      FUNC0 (FUNC2 (&R, buf, x) == x);
      len -= x;
    }
    FUNC1 (&R);
  }
}