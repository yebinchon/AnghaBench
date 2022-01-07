
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_steps; } ;
typedef int PyObject ;
typedef TYPE_1__ LabObject ;


 int * PyInt_FromLong (int ) ;

__attribute__((used)) static PyObject* Lab_num_steps(PyObject* self, PyObject* no_arg) {
  return PyInt_FromLong(((LabObject*)self)->num_steps);
}
