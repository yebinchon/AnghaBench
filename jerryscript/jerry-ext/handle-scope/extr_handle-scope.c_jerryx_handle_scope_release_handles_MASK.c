#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* sibling; int /*<<< orphan*/  jval; } ;
typedef  TYPE_1__ jerryx_handle_t ;
typedef  TYPE_2__* jerryx_handle_scope ;
struct TYPE_6__ {size_t prelist_handle_count; int /*<<< orphan*/ * handle_prelist; TYPE_1__* handle_ptr; } ;

/* Variables and functions */
 size_t JERRYX_HANDLE_PRELIST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2 (jerryx_handle_scope scope)
{
  size_t prelist_handle_count = scope->prelist_handle_count;
  if (prelist_handle_count == JERRYX_HANDLE_PRELIST_SIZE && scope->handle_ptr != NULL)
  {
    jerryx_handle_t *a_handle = scope->handle_ptr;
    while (a_handle != NULL)
    {
      FUNC1 (a_handle->jval);
      jerryx_handle_t *sibling = a_handle->sibling;
      FUNC0 (a_handle);
      a_handle = sibling;
    }
    scope->handle_ptr = NULL;
    prelist_handle_count = JERRYX_HANDLE_PRELIST_SIZE;
  }

  for (size_t idx = 0; idx < prelist_handle_count; idx++)
  {
    FUNC1 (scope->handle_prelist[idx]);
  }
  scope->prelist_handle_count = 0;
}