#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  context; TYPE_1__* env_c_api; } ;
struct TYPE_3__ {int (* action_discrete_count ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* action_discrete_name ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* action_discrete_bounds ) (int /*<<< orphan*/ ,int,int*,int*) ;} ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ LabObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static PyObject* FUNC8(PyObject* pself, PyObject* no_arg) {
  LabObject* self = (LabObject*)pself;
  PyObject* discrete;

  int count = self->env_c_api->action_discrete_count(self->context);
  discrete = FUNC2(count);
  if (discrete == NULL) {
    FUNC0();
    return NULL;
  }
  int min_discrete, max_discrete;
  for (int i = 0; i < count; ++i) {
    self->env_c_api->action_discrete_bounds(self->context, i, &min_discrete,
                                            &max_discrete);
    if (FUNC3(discrete, i,
                       FUNC4("{s:i,s:i,s:s}", "min", min_discrete,
                                     "max", max_discrete, "name",
                                     self->env_c_api->action_discrete_name(
                                         self->context, i))) != 0) {
      FUNC1(PyExc_RuntimeError, "Unable to populate list");
      return NULL;
    }
  }

  return discrete;
}