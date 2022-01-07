
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int DEEPMIND_LAB_WRAPPER_VERSION ;
 int * Py_BuildValue (char*,int ) ;

__attribute__((used)) static PyObject* module_version(PyObject* self, PyObject* no_arg) {
  return Py_BuildValue("s", DEEPMIND_LAB_WRAPPER_VERSION);
}
