
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int closed; scalar_t__ none_cnt; scalar_t__ true_cnt; scalar_t__ false_cnt; int pipeline; int app; int parser; int feed_disconnect; } ;
typedef int PyObject ;
typedef TYPE_1__ Protocol ;


 int Parser_feed_disconnect (int *) ;
 int Pipeline_cancel (int *) ;
 int * PyObject_CallFunctionObjArgs (int ,int *) ;
 int * PyObject_GetAttrString (int ,char*) ;
 int PySet_Discard (int *,int *) ;
 int Py_DECREF (int *) ;
 int * Py_False ;
 int * Py_None ;
 scalar_t__ Py_REFCNT (int *) ;
 int * Py_True ;
 int Py_XDECREF (int *) ;
 int Py_XINCREF (int *) ;
 int assert (int) ;
 int printf (char*,size_t,size_t,size_t) ;

__attribute__((used)) static PyObject*
Protocol_connection_lost(Protocol* self, PyObject* args)
{
  self->closed = 1;

  PyObject* connections = ((void*)0);
  PyObject* result = Py_None;







  if(!Parser_feed_disconnect(&self->parser))
    goto error;


  if(!(connections = PyObject_GetAttrString(self->app, "_connections")))
    goto error;

  if(PySet_Discard(connections, (PyObject*)self) == -1)
    goto error;

  if(!Pipeline_cancel(&self->pipeline))
    goto error;
  goto finally;

  error:
  result = ((void*)0);

  finally:
  Py_XDECREF(connections);
  Py_XINCREF(result);
  return result;
}
