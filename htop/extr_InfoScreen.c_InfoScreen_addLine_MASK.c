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
struct TYPE_3__ {int /*<<< orphan*/  lines; int /*<<< orphan*/  display; int /*<<< orphan*/  inc; } ;
typedef  int /*<<< orphan*/  Object ;
typedef  TYPE_1__ InfoScreen ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(InfoScreen* this, const char* line) {
   FUNC4(this->lines, (Object*) FUNC1(line, 0));
   const char* incFilter = FUNC0(this->inc);
   if (!incFilter || FUNC3(line, incFilter))
      FUNC2(this->display, (Object*)FUNC5(this->lines, FUNC6(this->lines)-1));
}