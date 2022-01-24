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
 int kl ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int p ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

int FUNC11()
{
	FUNC8(32) *kl;
	FUNC9(32) *p;
	kl = FUNC3(32);
	*FUNC5(32, kl) = 1;
	*FUNC5(32, kl) = 10;
	FUNC6(32, kl, 0);
	for (p = FUNC0(kl); p != FUNC2(kl); p = FUNC4(p))
		FUNC10("%d\n", FUNC7(p));
	FUNC1(32, kl);
	return 0;
}