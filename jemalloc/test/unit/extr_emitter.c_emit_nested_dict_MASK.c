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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  emitter_type_int ; 

__attribute__((used)) static void FUNC5(emitter_t *emitter) {
	int val = 123;
	FUNC0(emitter);
	FUNC1(emitter, "json1", "Dict 1");
	FUNC1(emitter, "json2", "Dict 2");
	FUNC4(emitter, "primitive", "A primitive", emitter_type_int, &val);
	FUNC2(emitter); /* Close 2 */
	FUNC1(emitter, "json3", "Dict 3");
	FUNC2(emitter); /* Close 3 */
	FUNC2(emitter); /* Close 1 */
	FUNC1(emitter, "json4", "Dict 4");
	FUNC4(emitter, "primitive", "Another primitive",
	    emitter_type_int, &val);
	FUNC2(emitter); /* Close 4 */
	FUNC3(emitter);
}