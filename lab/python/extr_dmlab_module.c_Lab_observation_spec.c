
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ typeobj; } ;
struct TYPE_8__ {scalar_t__ type; int dims; int * shape; } ;
struct TYPE_7__ {int context; TYPE_1__* env_c_api; } ;
struct TYPE_6__ {int (* observation_count ) (int ) ;int (* observation_name ) (int ,int) ;int (* observation_spec ) (int ,int,TYPE_3__*) ;} ;
typedef int PyObject ;
typedef TYPE_2__ LabObject ;
typedef TYPE_3__ EnvCApi_ObservationSpec ;


 scalar_t__ EnvCApi_ObservationString ;
 int ObservationType2typenum (scalar_t__) ;
 TYPE_5__* PyArray_DescrFromType (int) ;
 int PyErr_NoMemory () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_RuntimeError ;
 int PyInt_FromLong (int ) ;
 int * PyList_New (int) ;
 scalar_t__ PyList_SetItem (int *,int,int ) ;
 int PyString_Type ;
 int * PyTuple_New (int) ;
 scalar_t__ PyTuple_SetItem (int *,int,int ) ;
 int PyUnicode_Type ;
 int Py_BuildValue (char*,char*,int ,char*,int *,char*,int *) ;
 int stub1 (int ) ;
 int stub2 (int ,int,TYPE_3__*) ;
 int stub3 (int ,int) ;
 int stub4 (int ,int) ;

__attribute__((used)) static PyObject* Lab_observation_spec(PyObject* pself, PyObject* no_arg) {
  LabObject* self = (LabObject*)pself;
  int count = self->env_c_api->observation_count(self->context);
  PyObject* result = PyList_New(count);
  if (result == ((void*)0)) {
    PyErr_NoMemory();
    return ((void*)0);
  }
  EnvCApi_ObservationSpec spec;
  PyObject* type;
  PyObject* shape;

  for (int idx = 0; idx < count; ++idx) {
    self->env_c_api->observation_spec(self->context, idx, &spec);
    if (spec.type == EnvCApi_ObservationString) {



      type = (PyObject*)(&PyString_Type);

      shape = PyTuple_New(0);
      if (PyList_SetItem(result, idx, Py_BuildValue(
              "{s:s,s:N,s:O}",
              "name", self->env_c_api->observation_name(self->context, idx),
              "shape", shape,
              "dtype", type)) != 0) {
        PyErr_SetString(PyExc_RuntimeError, "Unable to populate list");
        return ((void*)0);
      }
      continue;
    }
    int observation_type = ObservationType2typenum(spec.type);
    if (observation_type == -1) {
      PyErr_SetString(PyExc_RuntimeError, "Invalid observation spec.");
      return ((void*)0);
    }

    type = (PyObject*)PyArray_DescrFromType(observation_type)->typeobj;
    shape = PyTuple_New(spec.dims);
    for (int j = 0; j < spec.dims; ++j) {
      if (PyTuple_SetItem(shape, j, PyInt_FromLong(spec.shape[j])) != 0) {
        PyErr_SetString(PyExc_RuntimeError, "Unable to populate tuple");
        return ((void*)0);
      }
    }
    if (PyList_SetItem(result, idx, Py_BuildValue(
            "{s:s,s:N,s:O}",
            "name", self->env_c_api->observation_name(self->context, idx),
            "shape", shape,
            "dtype", type)) != 0) {
      PyErr_SetString(PyExc_RuntimeError, "Unable to populate list");
      return ((void*)0);
    }
  }
  return result;
}
