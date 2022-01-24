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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (struct connection*,char const*,int) ; 
 int FUNC3 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC4 (struct connection *c, const char *key, int key_len) {
  if (verbosity > 1) {
    FUNC1 (stderr, "memcache_get: key='%s'\n", key);
  }
  FUNC0 ();

  //WaitAio = WaitAio2 = WaitAio3 = 0;

  int res = FUNC2 (c, key, key_len);

  if (res == -2) {
    return FUNC3 (c, key, key_len);
  }

  return 0;
}