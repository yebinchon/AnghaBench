#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_4__ {int cvarFlags; scalar_t__* enableCvar; scalar_t__* cvarTest; } ;
typedef  TYPE_1__ itemDef_t ;
typedef  int /*<<< orphan*/  buff ;
struct TYPE_5__ {int /*<<< orphan*/  (* getCVarString ) (scalar_t__*,char*,int) ;} ;

/* Variables and functions */
 TYPE_3__* DC ; 
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__*) ; 
 scalar_t__ FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char**,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char*,int) ; 

qboolean FUNC5(itemDef_t *item, int flag) {
  char script[1024], *p;
  FUNC3(script, 0, sizeof(script));
  if (item && item->enableCvar && *item->enableCvar && item->cvarTest && *item->cvarTest) {
		char buff[1024];
	  DC->getCVarString(item->cvarTest, buff, sizeof(buff));

    FUNC0(script, 1024, item->enableCvar);
    p = script;
    while (1) {
      const char *val;
      // expect value then ; or NULL, NULL ends list
      if (!FUNC2(&p, &val)) {
				return (item->cvarFlags & flag) ? qfalse : qtrue;
      }

      if (val[0] == ';' && val[1] == '\0') {
        continue;
      }

			// enable it if any of the values are true
			if (item->cvarFlags & flag) {
        if (FUNC1(buff, val) == 0) {
					return qtrue;
				}
			} else {
				// disable it if any of the values are true
        if (FUNC1(buff, val) == 0) {
					return qfalse;
				}
			}

    }
		return (item->cvarFlags & flag) ? qfalse : qtrue;
  }
	return qtrue;
}