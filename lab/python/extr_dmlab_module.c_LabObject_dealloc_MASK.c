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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* tp_free ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  observation_indices; int /*<<< orphan*/  env_c_api; int /*<<< orphan*/  level_cache_context; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ LabObject ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(PyObject* pself) {
  LabObject* self = (LabObject*)pself;
  FUNC2(self);
  FUNC1(self->level_cache_context);
  FUNC3(self->env_c_api);
  FUNC3(self->observation_indices);
  FUNC0(self)->tp_free(pself);
}