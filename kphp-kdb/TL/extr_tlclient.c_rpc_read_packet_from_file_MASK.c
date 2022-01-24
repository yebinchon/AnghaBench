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
 int BUFF_SIZE ; 
 scalar_t__ P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int FUNC4 (const char *filename) {
  FILE *f = FUNC1 (filename, "r");
  if (f == NULL) {
    FUNC3 ("fopen (\"%s\", \"r\") failed. %m\n", filename);
    return -1;
  }
  int r = 0;
  while (r < BUFF_SIZE && FUNC2 (f, "%x", P+r) == 1) {
    r++;
  }
  FUNC0 (f);
  if (r == BUFF_SIZE) {
    FUNC3 ("RPC packet is too big.\n");
    return -1;
  }
  return r;
}