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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static jv FUNC8(jv values, jv keys, int is_min) {
  if (FUNC5(values) != JV_KIND_ARRAY)
    return FUNC7(values, keys, "cannot be iterated over");
  if (FUNC5(keys) != JV_KIND_ARRAY)
    return FUNC7(values, keys, "cannot be iterated over");
  if (FUNC1(FUNC3(values)) != FUNC1(FUNC3(keys)))
    return FUNC7(values, keys, "have wrong length");

  if (FUNC1(FUNC3(values)) == 0) {
    FUNC4(values);
    FUNC4(keys);
    return FUNC6();
  }
  jv ret = FUNC0(FUNC3(values), 0);
  jv retkey = FUNC0(FUNC3(keys), 0);
  for (int i=1; i<FUNC1(FUNC3(values)); i++) {
    jv item = FUNC0(FUNC3(keys), i);
    int cmp = FUNC2(FUNC3(item), FUNC3(retkey));
    if ((cmp < 0) == (is_min == 1)) {
      FUNC4(retkey);
      retkey = item;
      FUNC4(ret);
      ret = FUNC0(FUNC3(values), i);
    } else {
      FUNC4(item);
    }
  }
  FUNC4(values);
  FUNC4(keys);
  FUNC4(retkey);
  return ret;
}