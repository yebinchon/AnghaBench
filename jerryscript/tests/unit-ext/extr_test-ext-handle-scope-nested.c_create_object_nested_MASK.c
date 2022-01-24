#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ jerryx_handle_scope_status ;
typedef  TYPE_1__* jerryx_escapable_handle_scope ;
typedef  int /*<<< orphan*/  jerry_value_t ;
struct TYPE_6__ {scalar_t__ prelist_handle_count; int /*<<< orphan*/ * handle_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 () ; 
 scalar_t__ jerryx_handle_scope_ok ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**) ; 
 int /*<<< orphan*/  native_info ; 

__attribute__((used)) static jerry_value_t
FUNC8 (int times)
{
  jerryx_escapable_handle_scope scope;
  FUNC7 (&scope);

  jerry_value_t obj;
  if (times == 0)
  {
    obj = FUNC4 (FUNC1 ());
    FUNC2 (obj, NULL, &native_info);
  }
  else
  {
    obj = FUNC8 (times - 1);
  }
  FUNC0 (FUNC6 () == scope);

  // If leaves `escaped` uninitialized, there will be a style error on linux thrown by compiler
  jerry_value_t escaped = 0;
  jerryx_handle_scope_status status = FUNC5 (scope, obj, &escaped);
  FUNC0 (status == jerryx_handle_scope_ok);
  FUNC0 (scope->prelist_handle_count == 0);
  FUNC0 (scope->handle_ptr == NULL);

  FUNC3 (scope);
  return escaped;
}