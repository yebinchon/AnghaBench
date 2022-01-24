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
 int /*<<< orphan*/  FUNC0 (long long,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (long long,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3 (int a, int b, int c) {
	int _a, _b, _c;
	long long x;
	FUNC0(x,a,b,c);
	FUNC1(x,_a,_b,_c);
	FUNC2 (a == _a && b == _b && c == _c);
}