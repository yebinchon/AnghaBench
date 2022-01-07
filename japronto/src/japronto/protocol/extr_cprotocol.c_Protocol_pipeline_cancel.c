
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pipeline; } ;
typedef int PyObject ;
typedef TYPE_1__ Protocol ;


 int Pipeline_cancel (int *) ;
 int Py_RETURN_NONE ;

__attribute__((used)) static PyObject*
Protocol_pipeline_cancel(Protocol* self)
{
  if(!Pipeline_cancel(&self->pipeline))
    return ((void*)0);

  Py_RETURN_NONE;
}
