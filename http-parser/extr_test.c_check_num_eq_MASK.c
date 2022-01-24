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
struct message {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static inline int
FUNC1 (const struct message *m,
              const char *prop,
              int expected,
              int found) {
  if (expected != found) {
    FUNC0("\n*** Error: %s in '%s' ***\n\n", prop, m->name);
    FUNC0("expected %d\n", expected);
    FUNC0("   found %d\n", found);
    return 0;
  }
  return 1;
}