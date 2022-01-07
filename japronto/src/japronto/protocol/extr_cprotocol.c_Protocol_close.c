
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int transport; } ;
typedef int PyObject ;
typedef TYPE_1__ Protocol ;


 int * PyObject_CallFunctionObjArgs (int *,int *) ;
 int * PyObject_GetAttrString (int ,char*) ;
 int Py_DECREF (int *) ;
 int Py_XDECREF (int *) ;

__attribute__((used)) static void*
Protocol_close(Protocol* self)
{
  void* result = self;

  PyObject* close = ((void*)0);
  close = PyObject_GetAttrString(self->transport, "close");
  if(!close)
    goto error;
  PyObject* tmp = PyObject_CallFunctionObjArgs(close, ((void*)0));
  if(!tmp)
    goto error;
  Py_DECREF(tmp);

  goto finally;

  error:
  result = ((void*)0);

  finally:
  Py_XDECREF(close);
  return result;
}
