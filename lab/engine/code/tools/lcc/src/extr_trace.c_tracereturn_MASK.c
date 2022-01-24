#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ Tree ;
struct TYPE_5__ {char* name; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__* Symbol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  frameno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ voidtype ; 

__attribute__((used)) static void FUNC5(Symbol printer, Symbol f, Tree e) {
	FUNC0(f->name); FUNC0("#");
	FUNC4(FUNC2(frameno), 0);
	FUNC0(" returned");
	if (FUNC1(f->type) != voidtype && e) {
		FUNC0(" ");
		FUNC4(e, 0);
	}
	FUNC0("\n");
	FUNC3(printer);
}