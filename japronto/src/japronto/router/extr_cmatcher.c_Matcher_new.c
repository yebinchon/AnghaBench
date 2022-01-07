
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ buffer_len; int * buffer; } ;
struct TYPE_5__ {scalar_t__ (* tp_alloc ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ PyTypeObject ;
typedef int PyObject ;
typedef TYPE_2__ Matcher ;


 scalar_t__ stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static PyObject *
Matcher_new(PyTypeObject *type, PyObject *args, PyObject *kwds)
{
  Matcher* self = ((void*)0);

  self = (Matcher*)type->tp_alloc(type, 0);
  if(!self)
    goto finally;

  self->buffer = ((void*)0);
  self->buffer_len = 0;

  finally:
  return (PyObject*)self;
}
