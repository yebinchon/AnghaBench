
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ (* tp_alloc ) (TYPE_2__*,int ) ;} ;
struct TYPE_5__ {int * check_interval; int * check_idle_handle; int * check_idle; int * call_later; int * connections; } ;
typedef TYPE_1__ Reaper ;
typedef TYPE_2__ PyTypeObject ;
typedef int PyObject ;


 scalar_t__ stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static PyObject*
Reaper_new(PyTypeObject* type, PyObject* args, PyObject* kwds)
{
  Reaper* self = ((void*)0);

  self = (Reaper*)type->tp_alloc(type, 0);
  if(!self)
    goto finally;

  self->connections = ((void*)0);
  self->call_later = ((void*)0);
  self->check_idle = ((void*)0);
  self->check_idle_handle = ((void*)0);
  self->check_interval = ((void*)0);

  finally:
  return (PyObject*)self;
}
