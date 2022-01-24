#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  lines; TYPE_1__* process; TYPE_2__* display; } ;
struct TYPE_10__ {int /*<<< orphan*/  items; } ;
struct TYPE_9__ {int /*<<< orphan*/  pid; } ;
typedef  TYPE_2__ Panel ;
typedef  TYPE_3__ InfoScreen ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*,int /*<<< orphan*/ ) ; 

void FUNC11(InfoScreen* this) {
   Panel* panel = this->display;
   int idx = FUNC3(FUNC4(panel), 0);

   FUNC5(panel);

   FUNC0();
   char* env = FUNC7(this->process->pid);
   FUNC1();
   if (env) {
      for (char *p = env; *p; p = FUNC10(p, 0)+1)
         FUNC2(this, p);
      FUNC9(env);
   }
   else {
      FUNC2(this, "Could not read process environment.");
   }

   FUNC8(this->lines);
   FUNC8(panel->items);
   FUNC6(panel, idx);
}