
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * write; int app; } ;
typedef int PyObject ;
typedef TYPE_1__ Protocol ;


 int Protocol_close (TYPE_1__*) ;
 int * PyObject_CallFunctionObjArgs (int *,int *,int *) ;
 int * PyObject_GetAttrString (int ,char*) ;
 int Py_DECREF (int *) ;
 int Py_XDECREF (int *) ;

Protocol*
Protocol_on_error(Protocol* self, PyObject* error)
{
  PyObject* protocol_error_handler = ((void*)0);
  PyObject* response = ((void*)0);

  if(!(protocol_error_handler =
       PyObject_GetAttrString(self->app, "protocol_error_handler")))
    goto error;

  if(!(response =
       PyObject_CallFunctionObjArgs(protocol_error_handler, error, ((void*)0))))
    goto error;

  PyObject* tmp;
  if(!(tmp = PyObject_CallFunctionObjArgs(self->write, response, ((void*)0))))
    goto error;
  Py_DECREF(tmp);

  if(!Protocol_close(self))
    goto error;

  goto finally;

  error:
  self = ((void*)0);

  finally:
  Py_XDECREF(response);
  Py_XDECREF(protocol_error_handler);
  return self;
}
