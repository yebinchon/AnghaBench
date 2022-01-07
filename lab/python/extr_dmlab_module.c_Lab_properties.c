
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int context; TYPE_1__* env_c_api; } ;
struct TYPE_3__ {int (* list_property ) (int ,int *,char*,int ) ;} ;
typedef int PyObject ;
typedef TYPE_2__ LabObject ;






 int PropertyCallback ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,char**) ;
 int * PyDict_New () ;
 int PyErr_Format (int ,char*,char*) ;
 int PyErr_NoMemory () ;
 int PyExc_KeyError ;
 int PyExc_TypeError ;
 int stub1 (int ,int *,char*,int ) ;

__attribute__((used)) static PyObject* Lab_properties(PyObject* pself, PyObject* args,
                                PyObject* kwds) {
  LabObject* self = (LabObject*)pself;
  char* key = "";
  char* kwlist[] = {"key", ((void*)0)};
  if (!PyArg_ParseTupleAndKeywords(args, kwds, "|s", kwlist, &key)) {
    return ((void*)0);
  }
  PyObject* dictionary = PyDict_New();
  if (dictionary == ((void*)0)) {
    PyErr_NoMemory();
    return ((void*)0);
  }
  switch (self->env_c_api->list_property(self->context, dictionary, key,
                                         PropertyCallback)) {
    case 128:
      return dictionary;
    case 129:
      PyErr_Format(PyExc_TypeError, "'%s' not listable.", key);
      break;
    case 131:
      PyErr_Format(PyExc_TypeError, "Internal error while listing key '%s'.",
                   key);
      break;
    case 130:
    default:
      PyErr_Format(PyExc_KeyError, "'%s' not found.", key);
      break;
  }
  return ((void*)0);
}
