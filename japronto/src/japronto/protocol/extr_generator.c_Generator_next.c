
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object; } ;
typedef int PyObject ;
typedef TYPE_1__ Generator ;


 int PyErr_SetObject (int ,int ) ;
 int PyExc_StopIteration ;

__attribute__((used)) static PyObject*
Generator_next(Generator* self)
{
  PyErr_SetObject(PyExc_StopIteration, self->object);

  return ((void*)0);
}
