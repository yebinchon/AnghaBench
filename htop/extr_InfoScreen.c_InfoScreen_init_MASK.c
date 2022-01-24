#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* items; } ;
struct TYPE_8__ {TYPE_3__* display; int /*<<< orphan*/  lines; int /*<<< orphan*/  inc; int /*<<< orphan*/ * process; } ;
struct TYPE_7__ {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  Process ;
typedef  TYPE_2__ InfoScreen ;
typedef  int /*<<< orphan*/  FunctionBar ;

/* Variables and functions */
 int /*<<< orphan*/  COLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEFAULT_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InfoScreenEvents ; 
 int /*<<< orphan*/  InfoScreenFunctions ; 
 int /*<<< orphan*/  InfoScreenKeys ; 
 int /*<<< orphan*/  ListItem ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

InfoScreen* FUNC6(InfoScreen* this, Process* process, FunctionBar* bar, int height, char* panelHeader) {
   this->process = process;
   if (!bar) {
      bar = FUNC1(InfoScreenFunctions, InfoScreenKeys, InfoScreenEvents);
   }
   this->display = FUNC3(0, 1, COLS, height, false, FUNC0(ListItem), bar);
   this->inc = FUNC2(bar);
   this->lines = FUNC5(this->display->items->type, true, DEFAULT_SIZE);
   FUNC4(this->display, panelHeader);
   return this;
}