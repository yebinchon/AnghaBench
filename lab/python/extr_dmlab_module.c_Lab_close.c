
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int LabObject ;


 int Py_RETURN_FALSE ;
 int Py_RETURN_TRUE ;
 scalar_t__ env_close (int *) ;

__attribute__((used)) static PyObject* Lab_close(PyObject* self, PyObject* no_arg) {
  if (env_close((LabObject*)self)) {
    Py_RETURN_TRUE;
  } else {
    Py_RETURN_FALSE;
  }
}
