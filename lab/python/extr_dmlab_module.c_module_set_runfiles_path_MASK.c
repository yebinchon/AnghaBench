#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  runfiles_path; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ LabModuleState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/  Py_RETURN_TRUE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static PyObject* FUNC5(PyObject* self, PyObject* args) {
  const char* new_path;
  if (!FUNC0(args, "s", &new_path)) {
    return NULL;
  }

  LabModuleState* module_state = FUNC2(self);
  if (FUNC4(new_path) < sizeof(module_state->runfiles_path)) {
    FUNC3(module_state->runfiles_path, new_path);
  } else {
    FUNC1(PyExc_RuntimeError, "Runfiles directory name too long!");
    return NULL;
  }

  Py_RETURN_TRUE;
}