
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int observation_count; int * observation_indices; int context; TYPE_1__* env_c_api; } ;
struct TYPE_4__ {int (* observation_name ) (int ,int ) ;int (* observation ) (int ,int ,int *) ;} ;
typedef int PyObject ;
typedef TYPE_2__ LabObject ;
typedef int EnvCApi_Observation ;


 int * PyDict_New () ;
 int PyDict_SetItemString (int *,int ,int *) ;
 int PyErr_NoMemory () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_RuntimeError ;
 int Py_DECREF (int *) ;
 int is_running (TYPE_2__*) ;
 int * make_observation (int *) ;
 int stub1 (int ,int ,int *) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static PyObject* Lab_observations(PyObject* pself, PyObject* no_arg) {
  LabObject* self = (LabObject*)pself;

  if (!is_running((self))) {
    PyErr_SetString(PyExc_RuntimeError,
                    "Environment in wrong status for call to observations()");
    return ((void*)0);
  }

  PyObject* result = PyDict_New();
  if (result == ((void*)0)) {
    PyErr_NoMemory();
    return ((void*)0);
  }

  EnvCApi_Observation observation;

  for (int i = 0; i < self->observation_count; ++i) {
    self->env_c_api->observation(self->context, self->observation_indices[i],
                                 &observation);
    PyObject* entry = make_observation(&observation);
    if (entry == ((void*)0)) {
      Py_DECREF(result);
      return ((void*)0);
    }


    PyDict_SetItemString(result,
                         self->env_c_api->observation_name(
                             self->context, self->observation_indices[i]),
                         entry);
    Py_DECREF(entry);
  }
  return result;
}
