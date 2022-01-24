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
typedef  int /*<<< orphan*/  GColors ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char*,char*) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6 (GColors * color, const char *value)
{
  char *line, *ptr, *start;
  int ret = 0;

  line = FUNC5 (value);

  start = FUNC3 (line, ' ');
  if ((!start) || (!*(start + 1))) {
    FUNC0 (("attempted to parse color attr: %s\n", value));
    goto clean;
  }

  start++;
  while (1) {
    if ((ptr = FUNC4 (start, ", ")) != NULL)
      *ptr = 0;
    FUNC2 (color, start);
    if (ptr == NULL)
      break;
    start = ptr + 1;
  }

clean:
  FUNC1 (line);

  return ret;
}