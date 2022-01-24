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
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC1 (struct connection*,char const*,int,long long) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int verbosity ; 

int FUNC3 (struct connection *c, int op, const char *key, int len, long long arg) {
  if (len >= 4 && (!FUNC2 (key+1, "ate", 3))) {
    if (FUNC1 (c, key, len, (op == 0) ? arg : -arg)) {
      return 0;
    }
  }

  if (verbosity > 1) {
    FUNC0 (stderr, "error in incr query (%s)\n", key);
  }
  return 0;

}