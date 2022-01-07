
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int context; TYPE_1__* env_c_api; } ;
struct TYPE_3__ {int (* write_property ) (int ,char*,char*) ;} ;
typedef int PyObject ;
typedef TYPE_2__ LabObject ;






 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,char**,char**) ;
 int PyErr_Format (int ,char*,char*,...) ;
 int PyExc_KeyError ;
 int PyExc_TypeError ;
 int Py_RETURN_NONE ;
 int stub1 (int ,char*,char*) ;

__attribute__((used)) static PyObject* Lab_write_property(PyObject* pself, PyObject* args,
                                    PyObject* kwds) {
  LabObject* self = (LabObject*)pself;
  char* key = ((void*)0);
  char* value = ((void*)0);
  char* kwlist[] = {"key", "value", ((void*)0)};
  if (!PyArg_ParseTupleAndKeywords(args, kwds, "ss", kwlist, &key, &value)) {
    return ((void*)0);
  }
  switch (self->env_c_api->write_property(self->context, key, value)) {
    case 128:
      Py_RETURN_NONE;
    case 129:
      PyErr_Format(PyExc_TypeError, "'%s' not writable.", key);
      break;
    case 131:
      PyErr_Format(PyExc_TypeError, "Type error! Cannot assign '%s' to '%s'.",
                   value, key);
      break;
    case 130:
    default:
      PyErr_Format(PyExc_KeyError, "'%s' not found.", key);
      break;
  }
  return ((void*)0);
}
