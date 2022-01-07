
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int runfiles_path; } ;
typedef int PyObject ;


 int * Py_BuildValue (char*,int ) ;
 TYPE_1__* get_module_state (int *) ;

__attribute__((used)) static PyObject* module_runfiles_path(PyObject* self, PyObject* no_arg) {
  return Py_BuildValue("s", get_module_state(self)->runfiles_path);
}
