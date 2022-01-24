#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  uiName; } ;
struct TYPE_9__ {int moving; } ;
struct TYPE_8__ {int mode; int /*<<< orphan*/  param; } ;
typedef  TYPE_1__ Meter ;
typedef  TYPE_2__ ListItem ;

/* Variables and functions */
 TYPE_2__* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_6__** Meter_modes ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ,...) ; 

ListItem* FUNC3(Meter* this, bool moving) {
   char mode[21];
   if (this->mode)
      FUNC2(mode, 20, " [%s]", Meter_modes[this->mode]->uiName);
   else
      mode[0] = '\0';
   char number[11];
   if (this->param > 0)
      FUNC2(number, 10, " %d", this->param);
   else
      number[0] = '\0';
   char buffer[51];
   FUNC2(buffer, 50, "%s%s%s", FUNC1(this), number, mode);
   ListItem* li = FUNC0(buffer, 0);
   li->moving = moving;
   return li;
}