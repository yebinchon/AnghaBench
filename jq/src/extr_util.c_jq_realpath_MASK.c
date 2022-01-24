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
 int PATH_MAX ; 
 int /*<<< orphan*/  _PC_PATH_MAX ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*) ; 

jv FUNC8(jv path) {
  int path_max;
  char *buf = NULL;
#ifdef _PC_PATH_MAX
  path_max = pathconf(jv_string_value(path),_PC_PATH_MAX);
#else
  path_max = PATH_MAX;
#endif
  if (path_max > 0) {
     buf = FUNC3(path_max);
  }
#ifdef WIN32
  char *tmp = _fullpath(buf, jv_string_value(path), path_max);
#else
  char *tmp = FUNC7(FUNC5(path), buf);
#endif
  if (tmp == NULL) {
    FUNC1(buf);
    return path;
  }
  FUNC2(path);
  path = FUNC4(tmp);
  FUNC1(tmp);
  return path;
}