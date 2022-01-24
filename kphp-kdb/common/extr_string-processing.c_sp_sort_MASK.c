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
 int /*<<< orphan*/  cmp_char ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char*) ; 

char *FUNC4 (char *s) {
  int l = FUNC3 (s);
  char *t = FUNC2 (l);
  if (t != 0) {
    FUNC0 (t, s, (l + 1) * sizeof (char));
    FUNC1 (t, l, sizeof (char), cmp_char);
  }

  return t;
}