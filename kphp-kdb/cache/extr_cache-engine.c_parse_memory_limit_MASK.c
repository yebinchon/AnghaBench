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
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  optarg ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,long long*,char*) ; 

long long FUNC3 (int option, const char *limit, long long min_res, long long max_res) {
  long long x;
  char c = 0;
  if (FUNC2 (optarg, "%lld%c", &x, &c) < 1) {
    FUNC1 ("Parsing limit for option '%c' fail: %s\n", option, limit);
    FUNC0 (1);
  }
  switch (c | 0x20) {
    case ' ': break;
    case 'k':  x <<= 10; break;
    case 'm':  x <<= 20; break;
    case 'g':  x <<= 30; break;
    case 't':  x <<= 40; break;
    default: FUNC1 ("Parsing limit fail. Unknown suffix '%c'.\n", c); FUNC0 (1);
  }

  if (x < min_res) {
    FUNC1 ("Parsing limit for option '%c' fail (limit is too big), limit: %s, min_limit: %lld.\n", option, limit, min_res);
    FUNC0 (1);
  }

  if (x > max_res) {
    FUNC1 ("Parsing limit for option '%c' fail (limit is too small), limit: %s, max_limit: %lld.\n", option, limit, max_res);
    FUNC0 (1);
  }

  return x;
}