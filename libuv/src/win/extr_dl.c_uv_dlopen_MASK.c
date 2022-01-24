#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * handle; int /*<<< orphan*/ * errmsg; } ;
typedef  TYPE_1__ uv_lib_t ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LOAD_WITH_ALTERED_SEARCH_PATH ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 

int FUNC5(const char* filename, uv_lib_t* lib) {
  WCHAR filename_w[32768];

  lib->handle = NULL;
  lib->errmsg = NULL;

  if (!FUNC3(CP_UTF8,
                           0,
                           filename,
                           -1,
                           filename_w,
                           FUNC0(filename_w))) {
    return FUNC4(lib, filename, FUNC1());
  }

  lib->handle = FUNC2(filename_w, NULL, LOAD_WITH_ALTERED_SEARCH_PATH);
  if (lib->handle == NULL) {
    return FUNC4(lib, filename, FUNC1());
  }

  return 0;
}