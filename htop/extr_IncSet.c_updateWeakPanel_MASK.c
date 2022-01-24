#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_7__ {TYPE_1__* modes; scalar_t__ filtering; } ;
struct TYPE_6__ {int /*<<< orphan*/  value; } ;
struct TYPE_5__ {char* buffer; } ;
typedef  int /*<<< orphan*/  Panel ;
typedef  int /*<<< orphan*/  Object ;
typedef  TYPE_2__ ListItem ;
typedef  TYPE_3__ IncSet ;

/* Variables and functions */
 size_t INC_FILTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(IncSet* this, Panel* panel, Vector* lines) {
   Object* selected = FUNC1(panel);
   FUNC2(panel);
   if (this->filtering) {
      int n = 0;
      const char* incFilter = this->modes[INC_FILTER].buffer;
      for (int i = 0; i < FUNC6(lines); i++) {
         ListItem* line = (ListItem*)FUNC5(lines, i);
         if (FUNC4(line->value, incFilter)) {
            FUNC0(panel, (Object*)line);
            if (selected == (Object*)line) FUNC3(panel, n);
            n++;
         }
      }
   } else {
      for (int i = 0; i < FUNC6(lines); i++) {
         Object* line = FUNC5(lines, i);
         FUNC0(panel, line);
         if (selected == line) FUNC3(panel, i);
      }
   }
}