#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jerryx_handle_scope_t ;
struct TYPE_3__ {struct TYPE_3__* parent; } ;
typedef  TYPE_1__ jerryx_handle_scope_dynamic_t ;
struct TYPE_4__ {int /*<<< orphan*/ * prelist; TYPE_1__* start; } ;

/* Variables and functions */
 int /*<<< orphan*/ * JERRYX_HANDLE_SCOPE_POOL_PRELIST_LAST ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__ jerryx_handle_scope_pool ; 
 int /*<<< orphan*/  jerryx_handle_scope_root ; 

jerryx_handle_scope_t *
FUNC2 (jerryx_handle_scope_t *scope)
{
  if (scope == &jerryx_handle_scope_root)
  {
    return NULL;
  }
  if (!FUNC1 (scope))
  {
    jerryx_handle_scope_dynamic_t *dy_scope = (jerryx_handle_scope_dynamic_t *) scope;
    if (dy_scope == jerryx_handle_scope_pool.start)
    {
      return JERRYX_HANDLE_SCOPE_POOL_PRELIST_LAST;
    }
    jerryx_handle_scope_dynamic_t *parent = dy_scope->parent;
    return (jerryx_handle_scope_t *) parent;
  }
  if (scope == jerryx_handle_scope_pool.prelist)
  {
    return &jerryx_handle_scope_root;
  }
  return jerryx_handle_scope_pool.prelist + FUNC0 (scope) - 1;
}