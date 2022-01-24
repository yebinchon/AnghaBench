#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* Type ;
struct TYPE_4__ {scalar_t__ size; } ;

/* Variables and functions */
 char FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 char t ; 

__attribute__((used)) static int FUNC2(int len, Type ty, int lev) {
	int n = 0;

	do {
		FUNC1(ty, lev);
		n += ty->size;
		if ((len > 0 && n >= len) || t != ',')
			break;
		t = FUNC0();
	} while (t != '}');
	return n;
}