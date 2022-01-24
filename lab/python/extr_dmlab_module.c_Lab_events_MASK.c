#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int id; int observation_count; int /*<<< orphan*/ * observations; } ;
struct TYPE_6__ {int status; int /*<<< orphan*/  context; TYPE_1__* env_c_api; } ;
struct TYPE_5__ {int (* event_type_count ) (int /*<<< orphan*/ ) ;int (* event_count ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* event_type_name ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* event ) (int /*<<< orphan*/ ,int,TYPE_3__*) ;} ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ LabObject ;
typedef  TYPE_3__ EnvCApi_Event ;

/* Variables and functions */
#define  ENV_STATUS_INITIALIZED 130 
#define  EnvCApi_EnvironmentStatus_Running 129 
#define  EnvCApi_EnvironmentStatus_Terminated 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static PyObject* FUNC15(PyObject* pself, PyObject* no_arg) {
  LabObject* self = (LabObject*)pself;

  switch (self->status) {
    case ENV_STATUS_INITIALIZED:
    case EnvCApi_EnvironmentStatus_Running:
    case EnvCApi_EnvironmentStatus_Terminated:
      break;
    default:
      FUNC2(PyExc_RuntimeError,
                      "Environment in wrong status for call to events()");
      return NULL;
  }

  int event_type_count = self->env_c_api->event_type_count(self->context);
  int event_count = self->env_c_api->event_count(self->context);
  PyObject* result = FUNC3(event_count);
  if (result == NULL) {
    FUNC1();
    return NULL;
  }

  for (int event_id = 0; event_id < event_count; ++event_id) {
    EnvCApi_Event event;
    self->env_c_api->event(self->context, event_id, &event);
    if (0 > event.id || event.id >= event_type_count) {
      FUNC0(PyExc_RuntimeError,
                   "Environment generated invalid event id. "
                   "Event id(%d) must be in range [0, %d).",
                   event.id, event_type_count);
      FUNC9(result);
      return NULL;
    }
    PyObject* entry = FUNC6(2);
    FUNC7(entry, 0,
#if PY_MAJOR_VERSION >= 3
                    PyUnicode_FromString(
#else  // PY_MAJOR_VERSION >= 3
                    FUNC5(
#endif  // PY_MAJOR_VERSION >= 3
                        self->env_c_api->event_type_name(self->context,
                                                         event.id)));

    PyObject* observation_list = FUNC3(event.observation_count);
    if (observation_list == NULL) {
      FUNC9(result);
      return NULL;
    }
    for (int obs_id = 0; obs_id < event.observation_count; ++obs_id) {
      PyObject* obs_entry = FUNC10(&event.observations[obs_id]);
      if (obs_entry == NULL) {
        FUNC9(observation_list);
        FUNC9(result);
        return NULL;
      }
      FUNC4(observation_list, obs_id, obs_entry);
    }
    FUNC7(entry, 1, observation_list);
    FUNC4(result, event_id, entry);
  }

  return result;
}