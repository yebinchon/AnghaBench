
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* tp_free ) (int *) ;} ;
struct TYPE_5__ {int connections; int call_later; int check_idle; int check_idle_handle; int check_interval; } ;
typedef TYPE_1__ Reaper ;
typedef int PyObject ;


 TYPE_3__* Py_TYPE (TYPE_1__*) ;
 int Py_XDECREF (int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void
Reaper_dealloc(Reaper* self)
{
  Py_XDECREF(self->check_interval);
  Py_XDECREF(self->check_idle_handle);
  Py_XDECREF(self->check_idle);
  Py_XDECREF(self->call_later);
  Py_XDECREF(self->connections);

  Py_TYPE(self)->tp_free((PyObject*)self);
}
