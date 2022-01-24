#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
typedef  scalar_t__ pid_t ;
struct TYPE_13__ {int scrollV; } ;
struct TYPE_12__ {scalar_t__ st_uid; scalar_t__ pid; int /*<<< orphan*/  tgid; int /*<<< orphan*/  comm; int /*<<< orphan*/  show; } ;
struct TYPE_11__ {char* incFilter; int following; scalar_t__ userId; TYPE_7__* panel; scalar_t__ pidWhiteList; } ;
typedef  TYPE_1__ ProcessList ;
typedef  TYPE_2__ Process ;
typedef  int /*<<< orphan*/  Object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int) ; 
 TYPE_2__* FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 

void FUNC8(ProcessList* this) {
   const char* incFilter = this->incFilter;

   int currPos = FUNC1(this->panel);
   pid_t currPid = this->following != -1 ? this->following : 0;
   int currScrollV = this->panel->scrollV;

   FUNC2(this->panel);
   int size = FUNC6(this);
   int idx = 0;
   for (int i = 0; i < size; i++) {
      bool hidden = false;
      Process* p = FUNC5(this, i);

      if ( (!p->show)
         || (this->userId != (uid_t) -1 && (p->st_uid != this->userId))
         || (incFilter && !(FUNC7(p->comm, incFilter)))
         || (this->pidWhiteList && !FUNC0(this->pidWhiteList, p->tgid)) )
         hidden = true;

      if (!hidden) {
         FUNC3(this->panel, idx, (Object*)p);
         if ((this->following == -1 && idx == currPos) || (this->following != -1 && p->pid == currPid)) {
            FUNC4(this->panel, idx);
            this->panel->scrollV = currScrollV;
         }
         idx++;
      }
   }
}