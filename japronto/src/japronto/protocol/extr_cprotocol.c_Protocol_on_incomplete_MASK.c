#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  len; } ;
struct TYPE_6__ {int /*<<< orphan*/  write; TYPE_2__ gather; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ Protocol ;
typedef  TYPE_2__ Gather ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

Protocol*
FUNC4(Protocol* self)
{
  Gather* gather = &self->gather;
  PyObject* gather_buffer = NULL;

  if(!gather->len)
    goto finally;

  if(!(gather_buffer = FUNC0(gather)))
    goto error;

  PyObject* tmp;
  if(!(tmp = FUNC1(self->write, gather_buffer, NULL)))
    goto error;
  FUNC2(tmp);

  goto finally;

  error:
  self = NULL;

  finally:
  FUNC3(gather_buffer);
  return self;
}