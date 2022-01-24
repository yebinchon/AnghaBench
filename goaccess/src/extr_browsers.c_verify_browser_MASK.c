#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int browsers_hash_idx; int /*<<< orphan*/ ** user_browsers_hash; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BROWSER_TYPE_LEN ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  browsers ; 
 int /*<<< orphan*/ ** browsers_hash ; 
 char* FUNC2 (char*) ; 
 TYPE_1__ conf ; 
 char* FUNC3 (char*,char*,size_t,int /*<<< orphan*/ **) ; 
 char* FUNC4 (char*,char*,char*) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 

char *
FUNC7 (char *str, char *type)
{
  char *match = NULL, *token = NULL;
  int i = 0;
  size_t j = 0;

  if (str == NULL || *str == '\0')
    return NULL;

  /* check user's list */
  for (i = 0; i < conf.browsers_hash_idx; ++i) {
    if ((match = FUNC5 (str, conf.user_browsers_hash[i][0])) == NULL)
      continue;
    return FUNC3 (match, type, i, conf.user_browsers_hash);
  }

  if ((match = FUNC2 (str)) &&
      (token = FUNC4 (str, match, type)))
    return token;

  /* fallback to default browser list */
  for (j = 0; j < FUNC0 (browsers); ++j) {
    if ((match = FUNC5 (str, browsers_hash[j][0])) == NULL)
      continue;
    return FUNC3 (match, type, j, browsers_hash);
  }

  FUNC6 (type, "Unknown", BROWSER_TYPE_LEN);

  return FUNC1 ("Unknown");
}