#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* check_idle; void* connections; void* call_later; int /*<<< orphan*/  idle_timeout; int /*<<< orphan*/ * check_interval; } ;
typedef  TYPE_1__ Reaper ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_IDLE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * default_check_interval ; 

__attribute__((used)) static int
FUNC8(Reaper* self, PyObject* args, PyObject* kwds)
{
  PyObject* loop = NULL;
  int result = 0;

  PyObject* app = NULL;
  PyObject* idle_timeout = NULL;

  static char* kwlist[] = {"app", "check_interval", "idle_timeout", NULL};

  if (!FUNC0(
      args, kwds, "|OOO", kwlist, &app, &self->check_interval, &idle_timeout))
      goto error;

  FUNC6(*app);

  if(!self->check_interval)
    self->check_interval = default_check_interval;
  FUNC3(self->check_interval);

  FUNC6(FUNC1(self->check_interval) >= 0);

  if(!idle_timeout)
    self->idle_timeout = DEFAULT_IDLE_TIMEOUT;
  else
    self->idle_timeout = FUNC1(idle_timeout);

  FUNC6(self->idle_timeout >= 0);

  FUNC7("check_interval %ld", FUNC1(self->check_interval));
  FUNC7("idle_timeout %ld", self->idle_timeout);

  if(!(loop = FUNC2(app, "_loop")))
    goto error;

  if(!(self->call_later = FUNC2(loop, "call_later")))
    goto error;

  if(!(self->connections = FUNC2(app, "_connections")))
    goto error;

#ifdef REAPER_ENABLED
  if(!(self->check_idle = PyObject_GetAttrString((PyObject*)self, "_check_idle")))
    goto error;

  if(!Reaper_schedule_check_idle(self))
    goto error;
#endif

  goto finally;

  error:
  result = -1;

  finally:
  FUNC4(loop);
  return result;
}