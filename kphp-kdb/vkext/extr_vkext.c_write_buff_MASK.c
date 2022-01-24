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
 scalar_t__ BUFF_LEN ; 
 scalar_t__ buff ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*,int) ; 
 int FUNC2 (int,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ wptr ; 

void FUNC4 (const char *s, int l) {
  while (l > 0) {
    if (FUNC3 (wptr == buff + BUFF_LEN)) {
      FUNC0 ();
    }
    int ll = FUNC2 (l, buff + BUFF_LEN -  wptr);
    FUNC1 (wptr, s, ll);
    wptr += ll;
    s += ll;
    l -= ll;
  }

}