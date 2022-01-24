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
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_7__ {int /*<<< orphan*/ * pl; } ;
struct TYPE_6__ {TYPE_4__* header; TYPE_1__* settings; } ;
struct TYPE_5__ {double delay; scalar_t__ treeView; } ;
typedef  TYPE_2__ ScreenManager ;
typedef  int /*<<< orphan*/  ProcessList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(ScreenManager* this, double* oldTime, int* sortTimeout, bool* redraw, bool *rescan, bool *timedOut) {
   ProcessList* pl = this->header->pl;

   struct timeval tv;
   FUNC4(&tv, NULL);
   double newTime = ((double)tv.tv_sec * 10) + ((double)tv.tv_usec / 100000);
   *timedOut = (newTime - *oldTime > this->settings->delay);
   *rescan = *rescan || *timedOut;
   if (newTime < *oldTime) *rescan = true; // clock was adjusted?
   if (*rescan) {
      *oldTime = newTime;
      FUNC2(pl);
      if (*sortTimeout == 0 || this->settings->treeView) {
         FUNC3(pl);
         *sortTimeout = 1;
      }
      *redraw = true;
   }
   if (*redraw) {
      FUNC1(pl);
      FUNC0(this->header);
   }
   *rescan = false;
}