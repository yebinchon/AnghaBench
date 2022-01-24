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
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 

__attribute__((used)) static inline int
FUNC2 (const struct message *m,
              const char *prop,
              const char *expected,
              const char *found) {
  if ((expected == NULL) != (found == NULL)) {
    FUNC0("\n*** Error: %s in '%s' ***\n\n", prop, m->name);
    FUNC0("expected %s\n", (expected == NULL) ? "NULL" : expected);
    FUNC0("   found %s\n", (found == NULL) ? "NULL" : found);
    return 0;
  }
  if (expected != NULL && 0 != FUNC1(expected, found)) {
    FUNC0("\n*** Error: %s in '%s' ***\n\n", prop, m->name);
    FUNC0("expected '%s'\n", expected);
    FUNC0("   found '%s'\n", found);
    return 0;
  }
  return 1;
}