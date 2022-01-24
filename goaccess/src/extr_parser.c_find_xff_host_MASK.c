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
struct TYPE_4__ {int type_ip; int /*<<< orphan*/ * host; } ;
typedef  TYPE_1__ GLogItem ;

/* Variables and functions */
 int /*<<< orphan*/  SPEC_SFMT_MIS ; 
 int TYPE_IPINV ; 
 char* FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,int*) ; 
 char* FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char,char*) ; 
 int FUNC5 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7 (GLogItem * logitem, char **str, char **p)
{
  char *ptr = NULL, *tkn = NULL, *skips = NULL;
  int invalid_ip = 1, len = 0, type_ip = TYPE_IPINV;

  if (!(skips = FUNC0 (p)))
    return FUNC4 (logitem, SPEC_SFMT_MIS, **p, "{}");

  ptr = *str;
  while (*ptr != '\0') {
    if ((len = FUNC5 (ptr, skips)) == 0) {
      len++, ptr++;
      goto move;
    }

    ptr += len;
    /* extract possible IP */
    if (!(tkn = FUNC3 (ptr, str, 0)))
      break;

    invalid_ip = FUNC2 (tkn, &type_ip);
    /* done, already have IP and current token is not a host */
    if (logitem->host && invalid_ip) {
      FUNC1 (tkn);
      break;
    }
    if (!logitem->host && !invalid_ip) {
      logitem->host = FUNC6 (tkn);
      logitem->type_ip = type_ip;
    }
    FUNC1 (tkn);

  move:
    *str += len;
  }

  FUNC1 (skips);

  return logitem->host == NULL;
}