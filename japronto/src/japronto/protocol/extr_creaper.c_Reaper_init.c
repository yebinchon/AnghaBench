
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* check_idle; void* connections; void* call_later; int idle_timeout; int * check_interval; } ;
typedef TYPE_1__ Reaper ;
typedef int PyObject ;


 int DEFAULT_IDLE_TIMEOUT ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int **,int **,int **) ;
 int PyLong_AsLong (int *) ;
 void* PyObject_GetAttrString (int *,char*) ;
 int Py_INCREF (int *) ;
 int Py_XDECREF (int *) ;
 int Reaper_schedule_check_idle (TYPE_1__*) ;
 int assert (int) ;
 int debug_print (char*,int ) ;
 int * default_check_interval ;

__attribute__((used)) static int
Reaper_init(Reaper* self, PyObject* args, PyObject* kwds)
{
  PyObject* loop = ((void*)0);
  int result = 0;

  PyObject* app = ((void*)0);
  PyObject* idle_timeout = ((void*)0);

  static char* kwlist[] = {"app", "check_interval", "idle_timeout", ((void*)0)};

  if (!PyArg_ParseTupleAndKeywords(
      args, kwds, "|OOO", kwlist, &app, &self->check_interval, &idle_timeout))
      goto error;

  assert(app);

  if(!self->check_interval)
    self->check_interval = default_check_interval;
  Py_INCREF(self->check_interval);

  assert(PyLong_AsLong(self->check_interval) >= 0);

  if(!idle_timeout)
    self->idle_timeout = DEFAULT_IDLE_TIMEOUT;
  else
    self->idle_timeout = PyLong_AsLong(idle_timeout);

  assert(self->idle_timeout >= 0);

  debug_print("check_interval %ld", PyLong_AsLong(self->check_interval));
  debug_print("idle_timeout %ld", self->idle_timeout);

  if(!(loop = PyObject_GetAttrString(app, "_loop")))
    goto error;

  if(!(self->call_later = PyObject_GetAttrString(loop, "call_later")))
    goto error;

  if(!(self->connections = PyObject_GetAttrString(app, "_connections")))
    goto error;
  goto finally;

  error:
  result = -1;

  finally:
  Py_XDECREF(loop);
  return result;
}
