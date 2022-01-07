
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int id; int observation_count; int * observations; } ;
struct TYPE_6__ {int status; int context; TYPE_1__* env_c_api; } ;
struct TYPE_5__ {int (* event_type_count ) (int ) ;int (* event_count ) (int ) ;int (* event_type_name ) (int ,int) ;int (* event ) (int ,int,TYPE_3__*) ;} ;
typedef int PyObject ;
typedef TYPE_2__ LabObject ;
typedef TYPE_3__ EnvCApi_Event ;





 int PyErr_Format (int ,char*,int,int) ;
 int PyErr_NoMemory () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_RuntimeError ;
 int * PyList_New (int) ;
 int PyList_SetItem (int *,int,int *) ;
 int PyString_FromString (int ) ;
 int * PyTuple_New (int) ;
 int PyTuple_SetItem (int *,int,int *) ;
 int * PyUnicode_FromString (int ) ;
 int Py_DECREF (int *) ;
 int * make_observation (int *) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ,int,TYPE_3__*) ;
 int stub4 (int ,int) ;

__attribute__((used)) static PyObject* Lab_events(PyObject* pself, PyObject* no_arg) {
  LabObject* self = (LabObject*)pself;

  switch (self->status) {
    case 130:
    case 129:
    case 128:
      break;
    default:
      PyErr_SetString(PyExc_RuntimeError,
                      "Environment in wrong status for call to events()");
      return ((void*)0);
  }

  int event_type_count = self->env_c_api->event_type_count(self->context);
  int event_count = self->env_c_api->event_count(self->context);
  PyObject* result = PyList_New(event_count);
  if (result == ((void*)0)) {
    PyErr_NoMemory();
    return ((void*)0);
  }

  for (int event_id = 0; event_id < event_count; ++event_id) {
    EnvCApi_Event event;
    self->env_c_api->event(self->context, event_id, &event);
    if (0 > event.id || event.id >= event_type_count) {
      PyErr_Format(PyExc_RuntimeError,
                   "Environment generated invalid event id. "
                   "Event id(%d) must be in range [0, %d).",
                   event.id, event_type_count);
      Py_DECREF(result);
      return ((void*)0);
    }
    PyObject* entry = PyTuple_New(2);
    PyTuple_SetItem(entry, 0,



                    PyString_FromString(

                        self->env_c_api->event_type_name(self->context,
                                                         event.id)));

    PyObject* observation_list = PyList_New(event.observation_count);
    if (observation_list == ((void*)0)) {
      Py_DECREF(result);
      return ((void*)0);
    }
    for (int obs_id = 0; obs_id < event.observation_count; ++obs_id) {
      PyObject* obs_entry = make_observation(&event.observations[obs_id]);
      if (obs_entry == ((void*)0)) {
        Py_DECREF(observation_list);
        Py_DECREF(result);
        return ((void*)0);
      }
      PyList_SetItem(observation_list, obs_id, obs_entry);
    }
    PyTuple_SetItem(entry, 1, observation_list);
    PyList_SetItem(result, event_id, entry);
  }

  return result;
}
