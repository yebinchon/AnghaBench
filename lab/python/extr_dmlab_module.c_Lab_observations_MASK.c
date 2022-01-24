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
struct TYPE_5__ {int observation_count; int /*<<< orphan*/ * observation_indices; int /*<<< orphan*/  context; TYPE_1__* env_c_api; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* observation_name ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* observation ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ LabObject ;
typedef  int /*<<< orphan*/  EnvCApi_Observation ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject* FUNC9(PyObject* pself, PyObject* no_arg) {
  LabObject* self = (LabObject*)pself;

  if (!FUNC5((self))) {
    FUNC3(PyExc_RuntimeError,
                    "Environment in wrong status for call to observations()");
    return NULL;
  }

  PyObject* result = FUNC0();
  if (result == NULL) {
    FUNC2();
    return NULL;
  }

  EnvCApi_Observation observation;

  for (int i = 0; i < self->observation_count; ++i) {
    self->env_c_api->observation(self->context, self->observation_indices[i],
                                 &observation);
    PyObject* entry = FUNC6(&observation);
    if (entry == NULL) {
      FUNC4(result);
      return NULL;
    }

    // PyDict_SetItemString increments reference count.
    FUNC1(result,
                         self->env_c_api->observation_name(
                             self->context, self->observation_indices[i]),
                         entry);
    FUNC4(entry);
  }
  return result;
}