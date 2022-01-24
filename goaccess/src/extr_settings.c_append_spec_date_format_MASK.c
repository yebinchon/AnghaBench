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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,char const*) ; 
 char* FUNC2 (scalar_t__) ; 

__attribute__((used)) static char *
FUNC3 (const char *date_format, const char *spec_format)
{
  char *s = FUNC2 (FUNC0 (NULL, 0, "%s%s", date_format, spec_format) + 1);
  FUNC1 (s, "%s%s", date_format, spec_format);

  return s;
}