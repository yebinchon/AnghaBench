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
struct TYPE_2__ {scalar_t__ error; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (char*) ; 
 TYPE_1__ tl ; 

int FUNC4 (char **s) {
  if (tl.error) { return -1; }
  int len = FUNC0 (s);
  if (len < 0) {
    tl.error = FUNC3 (*s);
    *s = 0;
    return -1;
  }
  char *t = FUNC1 (len + 1);
  FUNC2 (t, *s, len);
  t[len] = 0;
  *s = t;
  return len;
}