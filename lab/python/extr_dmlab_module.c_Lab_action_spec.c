
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int context; TYPE_1__* env_c_api; } ;
struct TYPE_3__ {int (* action_discrete_count ) (int ) ;int (* action_discrete_name ) (int ,int) ;int (* action_discrete_bounds ) (int ,int,int*,int*) ;} ;
typedef int PyObject ;
typedef TYPE_2__ LabObject ;


 int PyErr_NoMemory () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_RuntimeError ;
 int * PyList_New (int) ;
 scalar_t__ PyList_SetItem (int *,int,int ) ;
 int Py_BuildValue (char*,char*,int,char*,int,char*,int ) ;
 int stub1 (int ) ;
 int stub2 (int ,int,int*,int*) ;
 int stub3 (int ,int) ;

__attribute__((used)) static PyObject* Lab_action_spec(PyObject* pself, PyObject* no_arg) {
  LabObject* self = (LabObject*)pself;
  PyObject* discrete;

  int count = self->env_c_api->action_discrete_count(self->context);
  discrete = PyList_New(count);
  if (discrete == ((void*)0)) {
    PyErr_NoMemory();
    return ((void*)0);
  }
  int min_discrete, max_discrete;
  for (int i = 0; i < count; ++i) {
    self->env_c_api->action_discrete_bounds(self->context, i, &min_discrete,
                                            &max_discrete);
    if (PyList_SetItem(discrete, i,
                       Py_BuildValue("{s:i,s:i,s:s}", "min", min_discrete,
                                     "max", max_discrete, "name",
                                     self->env_c_api->action_discrete_name(
                                         self->context, i))) != 0) {
      PyErr_SetString(PyExc_RuntimeError, "Unable to populate list");
      return ((void*)0);
    }
  }

  return discrete;
}
