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
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3 (char *str) {
  if (str) {
    int len = FUNC1 (str);
#ifdef	DEBUG_EXACT_STRINGS
    assert (*((int *) (str - 4)) == 0xdeadbeef);
    assert (*((int *) (str + len + 1)) == 0xbeda3ae6);
    zfree (str - 4, len + 1 + 8);
#else
    FUNC2 (str, len + 1);
#endif
  }
}