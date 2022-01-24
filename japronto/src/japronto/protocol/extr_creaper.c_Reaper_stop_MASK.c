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
struct TYPE_3__ {int /*<<< orphan*/  check_idle_handle; } ;
typedef  TYPE_1__ Reaper ;
typedef  void PyObject ;

/* Variables and functions */
 void* FUNC0 (void*,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* Py_None ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static PyObject*
FUNC5(Reaper* self)
{
#ifdef REAPER_ENABLED
  void* result = Py_None;
  PyObject* cancel = NULL;

  if(!(cancel = PyObject_GetAttrString(self->check_idle_handle, "cancel")))
    goto error;

  PyObject* tmp;
  if(!(tmp = PyObject_CallFunctionObjArgs(cancel, NULL)))
    goto error;
  Py_DECREF(tmp);

  goto finally;

  error:
  result = NULL;

  finally:
  Py_XINCREF(result);
  Py_XDECREF(cancel);
  return result;
#else
  Py_RETURN_NONE;
#endif
}