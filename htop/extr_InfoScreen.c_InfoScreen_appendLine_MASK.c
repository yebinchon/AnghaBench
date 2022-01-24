#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  display; int /*<<< orphan*/  inc; int /*<<< orphan*/  lines; } ;
typedef  int /*<<< orphan*/  Object ;
typedef  int /*<<< orphan*/  ListItem ;
typedef  TYPE_1__ InfoScreen ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(InfoScreen* this, const char* line) {
   ListItem* last = (ListItem*)FUNC6(this->lines, FUNC7(this->lines)-1);
   FUNC1(last, line);
   const char* incFilter = FUNC0(this->inc);
   if (incFilter && FUNC3(this->display, FUNC4(this->display)-1) != (Object*)last && FUNC5(line, incFilter))
      FUNC2(this->display, (Object*)last);
}