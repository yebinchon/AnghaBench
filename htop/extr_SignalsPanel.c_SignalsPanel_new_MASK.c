#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; int number; } ;
typedef  int /*<<< orphan*/  Panel ;
typedef  int /*<<< orphan*/  Object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  ListItem ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 unsigned int Platform_numberOfSignals ; 
 TYPE_1__* Platform_signals ; 
 int SIGRTMAX ; 
 int SIGRTMIN ; 
 int SIGTERM ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int,int) ; 

Panel* FUNC8() {
   Panel* this = FUNC3(1, 1, 1, 1, true, FUNC0(ListItem), FUNC1("Send   ", "Cancel "));
   const int defaultSignal = SIGTERM;
   int defaultPosition = 15;
   unsigned int i;
   for (i = 0; i < Platform_numberOfSignals; i++) {
      FUNC4(this, i, (Object*) FUNC2(Platform_signals[i].name, Platform_signals[i].number));
      // signal 15 is not always the 15th signal in the table
      if (Platform_signals[i].number == defaultSignal) {
         defaultPosition = i;
      }
   }
   #if (defined(SIGRTMIN) && defined(SIGRTMAX))
   if (SIGRTMAX - SIGRTMIN <= 100) {
      static char buf[16];
      for (int sig = SIGRTMIN; sig <= SIGRTMAX; i++, sig++) {
         int n = sig - SIGRTMIN;
         xSnprintf(buf, 16, "%2d SIGRTMIN%-+3d", sig, n);
         if (n == 0) {
            buf[11] = '\0';
         }
         Panel_set(this, i, (Object*) ListItem_new(buf, sig));
      }
   }
   #endif
   FUNC5(this, "Send signal:");
   FUNC6(this, defaultPosition);
   return this;
}