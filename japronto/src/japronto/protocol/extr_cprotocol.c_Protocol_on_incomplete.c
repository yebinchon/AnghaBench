
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int len; } ;
struct TYPE_6__ {int write; TYPE_2__ gather; } ;
typedef int PyObject ;
typedef TYPE_1__ Protocol ;
typedef TYPE_2__ Gather ;


 int * Gather_flush (TYPE_2__*) ;
 int * PyObject_CallFunctionObjArgs (int ,int *,int *) ;
 int Py_DECREF (int *) ;
 int Py_XDECREF (int *) ;

Protocol*
Protocol_on_incomplete(Protocol* self)
{
  Gather* gather = &self->gather;
  PyObject* gather_buffer = ((void*)0);

  if(!gather->len)
    goto finally;

  if(!(gather_buffer = Gather_flush(gather)))
    goto error;

  PyObject* tmp;
  if(!(tmp = PyObject_CallFunctionObjArgs(self->write, gather_buffer, ((void*)0))))
    goto error;
  Py_DECREF(tmp);

  goto finally;

  error:
  self = ((void*)0);

  finally:
  Py_XDECREF(gather_buffer);
  return self;
}
