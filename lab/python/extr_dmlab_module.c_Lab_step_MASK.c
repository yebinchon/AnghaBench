#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ status; int num_steps; int /*<<< orphan*/  context; TYPE_1__* env_c_api; } ;
struct TYPE_4__ {int (* action_discrete_count ) (int /*<<< orphan*/ ) ;scalar_t__ (* advance ) (int /*<<< orphan*/ ,int,double*) ;int (* error_message ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* act_discrete ) (int /*<<< orphan*/ ,int*) ;} ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  TYPE_2__ LabObject ;

/* Variables and functions */
 scalar_t__ EnvCApi_EnvironmentStatus_Error ; 
 scalar_t__ NPY_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_Type ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC8 (double) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,double*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject* FUNC14(PyObject* pself, PyObject* args, PyObject* kwds) {
  LabObject* self = (LabObject*)pself;
  PyObject* action_obj = NULL;
  int num_steps = 1;

  char* kwlist[] = {"action", "num_steps", NULL};
  double reward;

  if (!FUNC0(args, kwds, "O!|i", kwlist, &PyArray_Type,
                                   &action_obj, &num_steps)) {
    return NULL;
  }

  if (!FUNC9(self)) {
    FUNC7(PyExc_RuntimeError,
                    "Environment in wrong status to advance.");
    return NULL;
  }

  PyArrayObject* discrete = (PyArrayObject*)action_obj;

  int action_discrete_count =
      self->env_c_api->action_discrete_count(self->context);
  if (FUNC3(discrete) != 1 ||
      FUNC2(discrete, 0) != action_discrete_count) {
    FUNC5(PyExc_ValueError, "action must have shape (%i)",
                 action_discrete_count);
    return NULL;
  }

  if (FUNC4(discrete) != NPY_INT) {
    FUNC7(PyExc_ValueError, "action must have dtype np.intc");
    return NULL;
  }

  self->env_c_api->act_discrete(self->context, (int*)FUNC1(discrete));

  self->status = self->env_c_api->advance(self->context, num_steps, &reward);
  self->num_steps += num_steps;
  if (self->status == EnvCApi_EnvironmentStatus_Error) {
    FUNC5(PyExc_ValueError, "Failed to advance environment \"%s\"",
                 self->env_c_api->error_message(self->context));
    return NULL;
  }

  // Check if any other Python exception has been thrown, e.g. in the level
  // cache.
  if (FUNC6() != NULL) {
    return NULL;
  }

  return FUNC8(reward);
}