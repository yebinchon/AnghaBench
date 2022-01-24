#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jerryx_handle_scope_t ;
struct TYPE_6__ {struct TYPE_6__* child; TYPE_1__* parent; } ;
typedef  TYPE_2__ jerryx_handle_scope_dynamic_t ;
struct TYPE_7__ {TYPE_2__* start; int /*<<< orphan*/  count; } ;
struct TYPE_5__ {TYPE_2__* child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * jerryx_handle_scope_current ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__ jerryx_handle_scope_pool ; 
 int /*<<< orphan*/  jerryx_handle_scope_root ; 

void
FUNC3 (jerryx_handle_scope_t *scope)
{
  if (scope == &jerryx_handle_scope_root)
  {
    return;
  }

  --jerryx_handle_scope_pool.count;
  if (scope == jerryx_handle_scope_current)
  {
    jerryx_handle_scope_current = FUNC1 (scope);
  }

  if (!FUNC2 (scope))
  {
    jerryx_handle_scope_dynamic_t *dy_scope = (jerryx_handle_scope_dynamic_t *) scope;
    if (dy_scope == jerryx_handle_scope_pool.start)
    {
      jerryx_handle_scope_pool.start = dy_scope->child;
    }
    else if (dy_scope->parent != NULL)
    {
      dy_scope->parent->child = dy_scope->child;
    }
    FUNC0 (dy_scope);
    return;
  }
  /**
   * Nothing to do with scopes in prelist
   */
}