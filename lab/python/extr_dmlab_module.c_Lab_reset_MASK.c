#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tp_name; } ;
struct TYPE_5__ {int episode; int /*<<< orphan*/  status; scalar_t__ num_steps; int /*<<< orphan*/  context; TYPE_1__* env_c_api; } ;
struct TYPE_4__ {scalar_t__ (* start ) (int /*<<< orphan*/ ,int,int) ;int /*<<< orphan*/  (* error_message ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ LabObject ;

/* Variables and functions */
 int /*<<< orphan*/  ENV_STATUS_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  Py_RETURN_TRUE ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject* FUNC9(PyObject* pself, PyObject* args, PyObject* kwds) {
  LabObject* self = (LabObject*)pself;
  int episode = -1;
  int seed;
  PyObject* seed_arg = NULL;

  char* kwlist[] = {"episode", "seed", NULL};
  if (!FUNC0(args, kwds, "|iO", kwlist, &episode,
                                   &seed_arg)) {
    return NULL;
  }

  if (episode >= 0) {
    self->episode = episode;
  }

  if (seed_arg == NULL || seed_arg == Py_None) {
    seed = FUNC6();
  } else {
    if (!FUNC4(seed_arg)) {
      FUNC1(PyExc_ValueError, "'seed' must be int or None, was '%s'.",
                   FUNC5(seed_arg)->tp_name);
      return NULL;
    }
    seed = FUNC3(seed_arg);
  }

  if (self->env_c_api->start(self->context, self->episode, seed) != 0) {
    FUNC1(PyExc_RuntimeError, "Failed to start environment - \"%s\"",
                 self->env_c_api->error_message(self->context));
    return NULL;
  }

  // Check if any other Python exception has been thrown, e.g. in the level
  // cache.
  if (FUNC2() != NULL) {
    return NULL;
  }

  self->num_steps = 0;
  ++self->episode;
  self->status = ENV_STATUS_INITIALIZED;
  Py_RETURN_TRUE;
}