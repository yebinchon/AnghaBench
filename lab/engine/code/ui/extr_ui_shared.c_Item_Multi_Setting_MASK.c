#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int count; char const** cvarList; float* cvarValue; int /*<<< orphan*/ * cvarStr; scalar_t__ strDef; } ;
typedef  TYPE_1__ multiDef_t ;
struct TYPE_6__ {int /*<<< orphan*/  cvar; scalar_t__ typeData; } ;
typedef  TYPE_2__ itemDef_t ;
typedef  int /*<<< orphan*/  buff ;
struct TYPE_7__ {float (* getCVarValue ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* getCVarString ) (int /*<<< orphan*/ ,char*,int) ;} ;

/* Variables and functions */
 TYPE_4__* DC ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 float FUNC2 (int /*<<< orphan*/ ) ; 

const char *FUNC3(itemDef_t *item) {
	char buff[1024];
	float value = 0;
	int i;
	multiDef_t *multiPtr = (multiDef_t*)item->typeData;
	if (multiPtr) {
		if (multiPtr->strDef) {
	    DC->getCVarString(item->cvar, buff, sizeof(buff));
		} else {
			value = DC->getCVarValue(item->cvar);
		}
		for (i = 0; i < multiPtr->count; i++) {
			if (multiPtr->strDef) {
				if (FUNC0(buff, multiPtr->cvarStr[i]) == 0) {
					return multiPtr->cvarList[i];
				}
			} else {
 				if (multiPtr->cvarValue[i] == value) {
					return multiPtr->cvarList[i];
 				}
 			}
 		}
	}
	return "";
}