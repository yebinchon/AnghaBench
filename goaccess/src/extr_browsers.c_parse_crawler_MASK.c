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
 int /*<<< orphan*/  BROWSER_TYPE_LEN ; 
 char* FUNC0 (char*,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC3 (char *str, char *match, char *type)
{
  char *ptr = NULL;
  int found = 0;

  while (match != str) {
    match--;
    if (*match == ' ' || *match == '+') {
      found = 1;
      break;
    }
  }

  /* same addr */
  if (match == str)
    return NULL;

  /* account for the previous +|space */
  if (found)
    match++;

  if ((ptr = FUNC0 (match, "; ")))
    *ptr = '\0';
  /* empty string after parsing it */
  if (*match == '\0')
    return NULL;

  FUNC2 (type, "Crawlers", BROWSER_TYPE_LEN);

  return FUNC1 (match);
}