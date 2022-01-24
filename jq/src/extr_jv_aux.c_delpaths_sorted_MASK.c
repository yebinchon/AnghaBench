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
 scalar_t__ JV_KIND_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static jv FUNC14(jv object, jv paths, int start) {
  jv delkeys = FUNC1();
  for (int i=0; i<FUNC4(FUNC6(paths));) {
    int j = i;
    FUNC0(FUNC4(FUNC3(FUNC6(paths), i)) > start);
    int delkey = FUNC4(FUNC3(FUNC6(paths), i)) == start + 1;
    jv key = FUNC3(FUNC3(FUNC6(paths), i), start);
    while (j < FUNC4(FUNC6(paths)) &&
           FUNC8(FUNC6(key), FUNC3(FUNC3(FUNC6(paths), j), start)))
      j++;
    // if i <= entry < j, then entry starts with key
    if (delkey) {
      // deleting this entire key, we don't care about any more specific deletions
      delkeys = FUNC2(delkeys, key);
    } else {
      // deleting certain sub-parts of this key
      jv subobject = FUNC10(FUNC6(object), FUNC6(key));
      if (!FUNC12(subobject)) {
        FUNC9(key);
        FUNC9(object);
        object = subobject;
        break;
      } else if (FUNC11(subobject) == JV_KIND_NULL) {
        FUNC9(key);
        FUNC9(subobject);
      } else {
        jv newsubobject = FUNC14(subobject, FUNC5(FUNC6(paths), i, j), start+1);
        if (!FUNC12(newsubobject)) {
          FUNC9(key);
          FUNC9(object);
          object = newsubobject;
          break;
        }
        object = FUNC13(object, key, newsubobject);
      }
      if (!FUNC12(object)) break;
    }
    i = j;
  }
  FUNC9(paths);
  if (FUNC12(object))
    object = FUNC7(object, delkeys);
  else
    FUNC9(delkeys);
  return object;
}