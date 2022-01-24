#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * write; int /*<<< orphan*/  app; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ Protocol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

Protocol*
FUNC5(Protocol* self, PyObject* error)
{
  PyObject* protocol_error_handler = NULL;
  PyObject* response = NULL;

  if(!(protocol_error_handler =
       FUNC2(self->app, "protocol_error_handler")))
    goto error;

  if(!(response =
       FUNC1(protocol_error_handler, error, NULL)))
    goto error;

  PyObject* tmp;
  if(!(tmp = FUNC1(self->write, response, NULL)))
    goto error;
  FUNC3(tmp);

  if(!FUNC0(self))
    goto error;

  goto finally;

  error:
  self = NULL;

  finally:
  FUNC4(response);
  FUNC4(protocol_error_handler);
  return self;
}