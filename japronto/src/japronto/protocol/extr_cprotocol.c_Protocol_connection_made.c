
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int closed; scalar_t__ last_read_ops; scalar_t__ read_ops; scalar_t__ idle_time; int * app; void* writelines; void* write; int * transport; void* false_cnt; void* true_cnt; void* none_cnt; } ;
typedef int PyObject ;
typedef TYPE_1__ Protocol ;


 void* PyObject_GetAttrString (int *,char*) ;
 int PySet_Add (int *,int *) ;
 int Py_False ;
 int Py_INCREF (int *) ;
 int Py_None ;
 void* Py_REFCNT (int ) ;
 int Py_RETURN_NONE ;
 int Py_True ;
 int Py_XDECREF (int *) ;
 int printf (char*,size_t,size_t,size_t) ;

__attribute__((used)) static PyObject*
Protocol_connection_made(Protocol* self, PyObject* transport)
{
  PyObject* connections = ((void*)0);
  self->transport = transport;
  Py_INCREF(self->transport);

  if(!(self->write = PyObject_GetAttrString(transport, "write")))
    goto error;

  if(!(self->writelines = PyObject_GetAttrString(transport, "writelines")))
    goto error;

  if(!(connections = PyObject_GetAttrString(self->app, "_connections")))
    goto error;







  if(PySet_Add(connections, (PyObject*)self) == -1)
    goto error;

  self->closed = 0;

  goto finally;

  error:
  return ((void*)0);

  finally:
  Py_XDECREF(connections);
  Py_RETURN_NONE;
}
