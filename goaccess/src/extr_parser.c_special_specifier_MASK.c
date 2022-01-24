#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  host; } ;
typedef  TYPE_1__ GLogItem ;

/* Variables and functions */
 int /*<<< orphan*/  SPEC_TOKN_NUL ; 
 int /*<<< orphan*/  SPEC_TOKN_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char**,char**) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2 (GLogItem * logitem, char **str, char **p)
{
  switch (**p) {
    /* XFF remote hostname (IP only) */
  case 'h':
    if (logitem->host)
      return FUNC1 (logitem, SPEC_TOKN_SET, **p, NULL);
    if (FUNC0 (logitem, str, p))
      return FUNC1 (logitem, SPEC_TOKN_NUL, 'h', NULL);
    break;
  }

  return 0;
}