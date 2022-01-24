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
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,char const*,char const*) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static char *
FUNC3 (const char *data)
{
  char *buf;
  int len = 0;

  /* chars to use based on encoding used */
#ifdef HAVE_LIBNCURSESW
  const char *bend = "\xe2\x94\x9c";
  const char *horz = "\xe2\x94\x80";
#else
  const char *bend = "|";
  const char *horz = "`-";
#endif

  if (data == NULL || *data == '\0')
    return NULL;

  len = FUNC0 (NULL, 0, " %s%s %s", bend, horz, data);
  buf = FUNC2 (len + 3);
  FUNC1 (buf, " %s%s %s", bend, horz, data);

  return buf;
}