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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int UV_EINVAL ; 
 int FUNC2 (char const*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(const char* name, const char* value) {
  wchar_t* name_w;
  wchar_t* value_w;
  int r;

  if (name == NULL || value == NULL)
    return UV_EINVAL;

  r = FUNC2(name, -1, &name_w);

  if (r != 0)
    return r;

  r = FUNC2(value, -1, &value_w);

  if (r != 0) {
    FUNC3(name_w);
    return r;
  }

  r = FUNC1(name_w, value_w);
  FUNC3(name_w);
  FUNC3(value_w);

  if (r == 0)
    return FUNC4(FUNC0());

  return 0;
}