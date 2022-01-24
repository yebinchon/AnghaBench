#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ defined; } ;
typedef  TYPE_1__* Symbol ;

/* Variables and functions */
 int /*<<< orphan*/  EXTERN ; 
 int /*<<< orphan*/  GLOBAL ; 
 int /*<<< orphan*/  STATIC ; 
 TYPE_1__* afunc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  inttype ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  voidptype ; 
 int /*<<< orphan*/  voidtype ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(Symbol yylink, Symbol f) {
	static Symbol prologue;
	
	afunc = FUNC2(STATIC, FUNC0(voidptype, 4, 0), GLOBAL);
	if (prologue == 0) {
		prologue = FUNC4(EXTERN, "_prologue", FUNC1(inttype, voidptype));
		prologue->defined = 0;
	}
	FUNC7(FUNC6(prologue, voidtype, FUNC5(FUNC3(afunc)), FUNC5(FUNC3(yylink)), NULL), 0, 0);

}