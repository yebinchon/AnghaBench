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
 size_t FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  OPESYS_TYPE_LEN ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/ ** os ; 
 char* FUNC2 (char const*,char*,char*,size_t) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

char *
FUNC5 (const char *str, char *os_type)
{
  char *a;
  size_t i;

  if (str == NULL || *str == '\0')
    return NULL;

  for (i = 0; i < FUNC0 (os); i++) {
    if ((a = FUNC3 (str, os[i][0])) != NULL)
      return FUNC2 (str, a, os_type, i);
  }
  FUNC4 (os_type, "Unknown", OPESYS_TYPE_LEN);

  return FUNC1 ("Unknown");
}