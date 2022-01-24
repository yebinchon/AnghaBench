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
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 scalar_t__ JV_KIND_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

jv FUNC11(jv root, jv path, jv value) {
  if (FUNC6(path) != JV_KIND_ARRAY) {
    FUNC4(value);
    FUNC4(root);
    FUNC4(path);
    return FUNC7(FUNC10("Path must be specified as an array"));
  }
  if (!FUNC8(root)){
    FUNC4(value);
    FUNC4(path);
    return root;
  }
  if (FUNC1(FUNC3(path)) == 0) {
    FUNC4(path);
    FUNC4(root);
    return value;
  }
  jv pathcurr = FUNC0(FUNC3(path), 0);
  jv pathrest = FUNC2(path, 1, FUNC1(FUNC3(path)));
  return FUNC9(root, pathcurr,
                FUNC11(FUNC5(FUNC3(root), FUNC3(pathcurr)), pathrest, value));
}