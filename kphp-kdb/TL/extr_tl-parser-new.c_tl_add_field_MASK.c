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
 int /*<<< orphan*/ * fields ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int namespace_level ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4 (char *id) {
  FUNC0 (namespace_level < 10);
  FUNC0 (namespace_level >= 0);
  if (FUNC3 (fields[namespace_level], id)) {
    return 0;
  }
  fields[namespace_level] = FUNC2 (fields[namespace_level], id, FUNC1 ());
  return 1;
}