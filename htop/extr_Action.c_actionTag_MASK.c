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
struct TYPE_3__ {int /*<<< orphan*/  panel; } ;
typedef  TYPE_1__ State ;
typedef  int /*<<< orphan*/  Process ;
typedef  int /*<<< orphan*/  Htop_Reaction ;

/* Variables and functions */
 int /*<<< orphan*/  HTOP_OK ; 
 int /*<<< orphan*/  KEY_DOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Htop_Reaction FUNC3(State* st) {
   Process* p = (Process*) FUNC0(st->panel);
   if (!p) return HTOP_OK;
   FUNC2(p);
   FUNC1(st->panel, KEY_DOWN);
   return HTOP_OK;
}