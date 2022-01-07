
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parser; int feed; int read_ops; } ;
typedef int PyObject ;
typedef TYPE_1__ Protocol ;


 int Parser_feed (int *,int *) ;
 int * PyObject_CallFunctionObjArgs (int ,int *,int *) ;
 int Py_DECREF (int *) ;
 int Py_RETURN_NONE ;

__attribute__((used)) static PyObject*
Protocol_data_received(Protocol* self, PyObject* data)
{
  if(!Parser_feed(&self->parser, data))
    goto error;


  goto finally;

  error:
  return ((void*)0);
  finally:
  Py_RETURN_NONE;
}
