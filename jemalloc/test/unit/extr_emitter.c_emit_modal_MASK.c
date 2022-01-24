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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  emitter_type_int ; 

__attribute__((used)) static void
FUNC12(emitter_t *emitter) {
	int val = 123;
	FUNC0(emitter);
	FUNC1(emitter, "j0", "T0");
	FUNC4(emitter, "j1");
	FUNC6(emitter);
	FUNC8(emitter, "i1", "I1", emitter_type_int, &val);
	FUNC5(emitter, "i2", emitter_type_int, &val);
	FUNC11(emitter, "I3", emitter_type_int, &val);
	FUNC9(emitter, "T1");
	FUNC8(emitter, "i4", "I4", emitter_type_int, &val);
	FUNC7(emitter); /* Close j1 */
	FUNC8(emitter, "i5", "I5", emitter_type_int, &val);
	FUNC10(emitter); /* Close T1 */
	FUNC8(emitter, "i6", "I6", emitter_type_int, &val);
	FUNC2(emitter); /* Close j0 / T0 */
	FUNC3(emitter);
}