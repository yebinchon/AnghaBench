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
typedef  int /*<<< orphan*/  AspellConfig ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC3 (AspellConfig *c, const char *key, const char *value) {
  if (!FUNC1 (c, key, value)) {
    FUNC2 (1, "aspell_config_replace (%p, %s, %s) fail.\n", *c, key, value);
    FUNC2 (1, "%s\n", FUNC0 (c));
    return 0;
  }
  return 1;
}