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
struct TYPE_2__ {scalar_t__ child; int /*<<< orphan*/  strace; } ;
typedef  TYPE_1__ TraceScreen ;
typedef  int /*<<< orphan*/  Object ;
typedef  int /*<<< orphan*/  InfoScreen ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(Object* cast) {
   TraceScreen* this = (TraceScreen*) cast;
   if (this->child > 0) {
      FUNC4(this->child, SIGTERM);
      FUNC5(this->child, NULL, 0);
      FUNC2(this->strace);
   }
   FUNC0();
   FUNC3(FUNC1((InfoScreen*)cast));
}