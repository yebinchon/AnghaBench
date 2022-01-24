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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 () ; 

__attribute__((used)) static void FUNC3( void ) {
	char classname[256];
	int i, item_count = FUNC2();
	for (i = 0; i < item_count; ++i) {
		FUNC1( i, classname );
		FUNC0( classname );
	}
}