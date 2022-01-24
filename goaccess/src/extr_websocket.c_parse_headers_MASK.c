#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* buf; } ;
typedef  TYPE_1__ WSHeaders ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (char const*,char*) ; 
 int FUNC5 (char*,TYPE_1__*) ; 
 char* FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7 (WSHeaders * headers)
{
  char *tmp = NULL;
  const char *buffer = headers->buf;
  const char *line = buffer, *next = NULL;
  int len = 0;

  while (line) {
    if ((next = FUNC4 (line, "\r\n")) != NULL)
      len = (next - line);
    else
      len = FUNC3 (line);

    if (len <= 0)
      return 1;

    tmp = FUNC6 (len + 1);
    FUNC1 (tmp, line, len);
    tmp[len] = '\0';

    if (FUNC5 (tmp, headers) == 1) {
      FUNC0 (tmp);
      return 1;
    }

    FUNC0 (tmp);
    line = next ? (next + 2) : NULL;

    if (FUNC2 (next, "\r\n\r\n") == 0)
      break;
  }

  return 0;
}