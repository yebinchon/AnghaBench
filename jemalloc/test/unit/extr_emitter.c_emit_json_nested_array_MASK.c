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
typedef  int /*<<< orphan*/  emitter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  emitter_type_int ; 
 int /*<<< orphan*/  emitter_type_string ; 

__attribute__((used)) static void
FUNC5(emitter_t *emitter) {
	int ival = 123;
	char *sval = "foo";
	FUNC0(emitter);
	FUNC2(emitter);
		FUNC2(emitter);
		FUNC4(emitter, emitter_type_int, &ival);
		FUNC4(emitter, emitter_type_string, &sval);
		FUNC4(emitter, emitter_type_int, &ival);
		FUNC4(emitter, emitter_type_string, &sval);
		FUNC3(emitter);
		FUNC2(emitter);
		FUNC4(emitter, emitter_type_int, &ival);
		FUNC3(emitter);
		FUNC2(emitter);
		FUNC4(emitter, emitter_type_string, &sval);
		FUNC4(emitter, emitter_type_int, &ival);
		FUNC3(emitter);
		FUNC2(emitter);
		FUNC3(emitter);
	FUNC3(emitter);
	FUNC1(emitter);
}