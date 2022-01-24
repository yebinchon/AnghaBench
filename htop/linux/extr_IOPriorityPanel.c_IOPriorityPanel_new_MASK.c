#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  Panel ;
typedef  int /*<<< orphan*/  Object ;
typedef  scalar_t__ IOPriority ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
#define  IOPRIO_CLASS_BE 129 
#define  IOPRIO_CLASS_RT 128 
 scalar_t__ IOPriority_Idle ; 
 scalar_t__ IOPriority_None ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  ListItem ; 
 scalar_t__ FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,int,char*) ; 

Panel* FUNC10(IOPriority currPrio) {
   Panel* this = FUNC5(1, 1, 1, 1, true, FUNC0(ListItem), FUNC1("Set    ", "Cancel "));

   FUNC6(this, "IO Priority:");
   FUNC4(this, (Object*) FUNC3("None (based on nice)", IOPriority_None));
   if (currPrio == IOPriority_None) FUNC7(this, 0);
   static const struct { int klass; const char* name; } classes[] = {
      { .klass = IOPRIO_CLASS_RT, .name = "Realtime" },
      { .klass = IOPRIO_CLASS_BE, .name = "Best-effort" },
      { .klass = 0, .name = NULL }
   };
   for (int c = 0; classes[c].name; c++) {
      for (int i = 0; i < 8; i++) {
         char name[50];
         FUNC9(name, sizeof(name)-1, "%s %d %s", classes[c].name, i, i == 0 ? "(High)" : (i == 7 ? "(Low)" : ""));
         IOPriority ioprio = FUNC2(classes[c].klass, i);
         FUNC4(this, (Object*) FUNC3(name, ioprio));
         if (currPrio == ioprio) FUNC7(this, FUNC8(this) - 1);
      }
   }
   FUNC4(this, (Object*) FUNC3("Idle", IOPriority_Idle));
   if (currPrio == IOPriority_Idle) FUNC7(this, FUNC8(this) - 1);
   return this;
}