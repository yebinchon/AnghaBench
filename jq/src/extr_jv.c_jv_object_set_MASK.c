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
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

jv FUNC4(jv object, jv key, jv value) {
  FUNC1(FUNC0(object, JV_KIND_OBJECT));
  FUNC1(FUNC0(key, JV_KIND_STRING));
  // copy/free of object, key, value coalesced
  jv* slot = FUNC3(&object, key);
  FUNC2(*slot);
  *slot = value;
  return object;
}