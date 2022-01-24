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
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (char const*,char*,long long*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static long long FUNC4 (const char *s) {
  long long x;
  char c = 0;
  if (FUNC2 (s, "%lld%c", &x, &c) < 1) {
    FUNC1 ("Parsing limit for option fail: %s\n", s);
    FUNC3 ();
    FUNC0 (1);
  }
  switch (c | 0x20) {
    case ' ': break;
    case 'k':  x <<= 10; break;
    case 'm':  x <<= 20; break;
    case 'g':  x <<= 30; break;
    case 't':  x <<= 40; break;
    default: 
      FUNC1 ("Parsing limit fail. Unknown suffix '%c'.\n", c); 
      FUNC3 ();
      FUNC0 (1);
  }
  return x;
}