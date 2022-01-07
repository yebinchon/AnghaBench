
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int runfiles_path; } ;
typedef int PyObject ;
typedef TYPE_1__ LabModuleState ;


 int PyArg_ParseTuple (int *,char*,char const**) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_RuntimeError ;
 int Py_RETURN_TRUE ;
 TYPE_1__* get_module_state (int *) ;
 int strcpy (int ,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static PyObject* module_set_runfiles_path(PyObject* self, PyObject* args) {
  const char* new_path;
  if (!PyArg_ParseTuple(args, "s", &new_path)) {
    return ((void*)0);
  }

  LabModuleState* module_state = get_module_state(self);
  if (strlen(new_path) < sizeof(module_state->runfiles_path)) {
    strcpy(module_state->runfiles_path, new_path);
  } else {
    PyErr_SetString(PyExc_RuntimeError, "Runfiles directory name too long!");
    return ((void*)0);
  }

  Py_RETURN_TRUE;
}
