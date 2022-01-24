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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *data, const char *fname) {
  FUNC0((FILE *)data, "jq: error: Could not open file %s: %s\n", fname, FUNC1(errno));
}