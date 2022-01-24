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
typedef  int /*<<< orphan*/  GJSON ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC2 (GJSON * json, char *s)
{
  while (*s) {
    switch (*s) {
      /* These are required JSON special characters that need to be escaped. */
    case '"':
      FUNC1 (json, "\\\"");
      break;
    case '\\':
      FUNC1 (json, "\\\\");
      break;
    case '\b':
      FUNC1 (json, "\\b");
      break;
    case '\f':
      FUNC1 (json, "\\f");
      break;
    case '\n':
      FUNC1 (json, "\\n");
      break;
    case '\r':
      FUNC1 (json, "\\r");
      break;
    case '\t':
      FUNC1 (json, "\\t");
      break;
    case '/':
      FUNC1 (json, "\\/");
      break;
    default:
      FUNC0 (json, &s);
      break;
    }
    s++;
  }
}