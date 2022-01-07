
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * transport; } ;
typedef int PyObject ;
typedef TYPE_1__ Protocol ;


 int Py_INCREF (int *) ;

__attribute__((used)) static PyObject*
Protocol_get_transport(Protocol* self)
{
  Py_INCREF(self->transport);

  return self->transport;
}
