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
struct TYPE_6__ {scalar_t__ bytes; scalar_t__ doubles; int /*<<< orphan*/  string; } ;
struct TYPE_5__ {scalar_t__ type; long* shape; int dims; } ;
struct TYPE_7__ {TYPE_2__ payload; TYPE_1__ spec; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  TYPE_3__ EnvCApi_Observation ;

/* Variables and functions */
 scalar_t__ EnvCApi_ObservationDoubles ; 
 scalar_t__ EnvCApi_ObservationString ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,long*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 long* FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (long*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject* FUNC11(const EnvCApi_Observation* observation) {
  if (observation->spec.type == EnvCApi_ObservationString) {
    PyObject* result =
#if PY_MAJOR_VERSION >= 3
        PyUnicode_FromStringAndSize(
#else  // PY_MAJOR_VERSION >= 3
        FUNC6(
#endif  // PY_MAJOR_VERSION >= 3
            observation->payload.string, observation->spec.shape[0]);

    if (result == NULL) FUNC4();
    return result;
  }

  int observation_type = FUNC0(observation->spec.type);
  if (observation_type == -1) {
    FUNC5(PyExc_RuntimeError, "Invalid observation spec.");
    return NULL;
  }

  long* bounds = FUNC8(observation->spec.dims, sizeof(long));
  if (bounds == NULL) {
    FUNC4();
    return NULL;
  }

  for (int j = 0; j < observation->spec.dims; ++j) {
    bounds[j] = observation->spec.shape[j];
  }

  PyArrayObject* array = (PyArrayObject*)FUNC3(
      observation->spec.dims, bounds, observation_type);
  FUNC9(bounds);

  if (array == NULL) {
    FUNC4();
    return NULL;
  }

  const void* src_mem = observation->spec.type == EnvCApi_ObservationDoubles
                            ? (void*)observation->payload.doubles
                            : (void*)observation->payload.bytes;
  FUNC10(FUNC1(array), src_mem, FUNC2(array));
  return (PyObject*)array;
}