
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int LabObject ;


 int Py_RETURN_FALSE ;
 int Py_RETURN_TRUE ;
 scalar_t__ is_running (int *) ;

__attribute__((used)) static PyObject* Lab_is_running(PyObject* self, PyObject* no_arg) {
  if (is_running((LabObject*)self)) {
    Py_RETURN_TRUE;
  } else {
    Py_RETURN_FALSE;
  }
}
