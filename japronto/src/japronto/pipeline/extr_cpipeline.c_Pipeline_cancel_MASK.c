#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int queue_start; int queue_end; int /*<<< orphan*/ * queue; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PipelineEntry ;
typedef  TYPE_1__ Pipeline ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void*
FUNC6(Pipeline* self)
{
  void* result = self;

  PipelineEntry *queue_entry;
  for(queue_entry = self->queue + self->queue_start;
      queue_entry < self->queue + self->queue_end; queue_entry++) {
    if(!FUNC1(*queue_entry))
      continue;

    PyObject* task = FUNC0(*queue_entry);
    PyObject* cancel = NULL;

    if(!(cancel = FUNC3(task, "cancel")))
      goto loop_error;

    PyObject* tmp;
    if(!(tmp = FUNC2(cancel, NULL)))
      goto loop_error;
    FUNC4(tmp);

    goto loop_finally;

    loop_error:
    result = NULL;

    loop_finally:
    FUNC5(cancel);

    if(!result)
      break;
  }

  return result;
}