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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  emitter_type_int ; 

__attribute__((used)) static void
FUNC9(emitter_t *emitter) {
	int ival = 123;

	FUNC0(emitter);
	FUNC4(emitter, "dict");
	FUNC6(emitter);
	FUNC4(emitter, "arr");
	FUNC2(emitter);
	FUNC6(emitter);
	FUNC5(emitter, "foo", emitter_type_int, &ival);
	FUNC7(emitter); /* Close arr[0] */
	/* arr[1] and arr[2] are primitives. */
	FUNC8(emitter, emitter_type_int, &ival);
	FUNC8(emitter, emitter_type_int, &ival);
	FUNC6(emitter);
	FUNC5(emitter, "bar", emitter_type_int, &ival);
	FUNC5(emitter, "baz", emitter_type_int, &ival);
	FUNC7(emitter); /* Close arr[3]. */
	FUNC3(emitter); /* Close arr. */
	FUNC7(emitter); /* Close dict. */
	FUNC1(emitter);
}