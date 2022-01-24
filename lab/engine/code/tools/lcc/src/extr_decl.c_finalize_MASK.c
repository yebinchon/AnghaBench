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

/* Variables and functions */
 int /*<<< orphan*/  CONSTANTS ; 
 int /*<<< orphan*/  GLOBAL ; 
 int /*<<< orphan*/  checkref ; 
 int /*<<< orphan*/  constants ; 
 int /*<<< orphan*/  doconst ; 
 int /*<<< orphan*/  doextern ; 
 int /*<<< orphan*/  doglobal ; 
 int /*<<< orphan*/  externals ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  identifiers ; 

void FUNC1(void) {
	FUNC0(externals,   GLOBAL,    doextern, NULL);
	FUNC0(identifiers, GLOBAL,    doglobal, NULL);
	FUNC0(identifiers, GLOBAL,    checkref, NULL);
	FUNC0(constants,   CONSTANTS, doconst,  NULL);
}