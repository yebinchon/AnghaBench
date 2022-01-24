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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3 (FILE * fp, char *s)
{
  if (!s) {
    FUNC0 (("NULL data on clean_output.\n"));
    return;
  }

  while (*s) {
    switch (*s) {
    case '\'':
      FUNC1 (fp, "&#39;");
      break;
    case '"':
      FUNC1 (fp, "&#34;");
      break;
    case '&':
      FUNC1 (fp, "&amp;");
      break;
    case '<':
      FUNC1 (fp, "&lt;");
      break;
    case '>':
      FUNC1 (fp, "&gt;");
      break;
    case ' ':
      FUNC1 (fp, "&nbsp;");
      break;
    default:
      FUNC2 (*s, fp);
      break;
    }
    s++;
  }
}