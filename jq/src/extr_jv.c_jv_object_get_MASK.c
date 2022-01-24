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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_OBJECT ; 
 int /*<<< orphan*/  JV_KIND_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

jv FUNC6(jv object, jv key) {
  FUNC1(FUNC0(object, JV_KIND_OBJECT));
  FUNC1(FUNC0(key, JV_KIND_STRING));
  jv* slot = FUNC5(object, key);
  jv val;
  if (slot) {
    val = FUNC2(*slot);
  } else {
    val = FUNC4();
  }
  FUNC3(object);
  FUNC3(key);
  return val;
}