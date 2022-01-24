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
typedef  int /*<<< orphan*/  opcode ;
typedef  int /*<<< orphan*/  block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  INSERT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static block FUNC6(block obj, block start, block end, opcode idx_op) {
  block key = FUNC0(FUNC3(FUNC1(FUNC4())),
                    FUNC3(FUNC1(FUNC5("start"))),
                    FUNC3(start),
                    FUNC2(INSERT),
                    FUNC3(FUNC1(FUNC5("end"))),
                    FUNC3(end),
                    FUNC2(INSERT));
  return FUNC0(key, obj, FUNC2(idx_op));
}