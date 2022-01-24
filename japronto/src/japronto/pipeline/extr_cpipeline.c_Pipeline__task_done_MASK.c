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
struct TYPE_4__ {int queue_start; int queue_end; int /*<<< orphan*/ * protocol; int /*<<< orphan*/ * queue; int /*<<< orphan*/  (* ready ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PipelineEntry ;
typedef  TYPE_1__ Pipeline ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ *),int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_False ; 
 int /*<<< orphan*/ * Py_True ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject*
FUNC10(Pipeline* self, PyObject* task)
{
  PyObject* result = Py_True;

  PipelineEntry *queue_entry;
  for(queue_entry = self->queue + self->queue_start;
      queue_entry < self->queue + self->queue_end; queue_entry++) {
    PyObject* done = NULL;
    PyObject* done_result = NULL;
    result = Py_True;

    if(FUNC3(*queue_entry)) {
      task = FUNC2(*queue_entry);

      if(!(done = FUNC5(task, "done")))
        goto loop_error;

      if(!(done_result = FUNC4(done, NULL)))
        goto loop_error;

      if(done_result == Py_False) {
        result = Py_False;
        goto loop_finally;
      }
    }

#ifdef PIPELINE_OPAQUE
    PyObject* tmp;
    if(!(tmp = PyObject_CallFunctionObjArgs(self->ready, *queue_entry, NULL)))
      goto loop_error;
    Py_DECREF(tmp);
#else
    if(!self->ready(*queue_entry, self->protocol))
      goto loop_error;
#endif

    FUNC1(*queue_entry);

    goto loop_finally;

    loop_error:
    result = NULL;

    loop_finally:
    FUNC7(done_result);
    FUNC7(done);
    if(!result)
      goto error;
    if(result == Py_False)
      break;
  }

  self->queue_start = queue_entry - self->queue;

#ifndef PIPELINE_OPAQUE
  if(FUNC0(self))
    // we became empty so release protocol
    FUNC6(self->protocol);
#endif

  goto finally;

  error:
  result = NULL;

  finally:
  FUNC8(result);
  return result;
}