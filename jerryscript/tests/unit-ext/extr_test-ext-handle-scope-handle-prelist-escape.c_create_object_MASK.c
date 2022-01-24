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
typedef  TYPE_1__* jerryx_escapable_handle_scope ;
typedef  int /*<<< orphan*/  jerry_value_t ;
struct TYPE_5__ {scalar_t__ prelist_handle_count; } ;

/* Variables and functions */
 scalar_t__ JERRYX_HANDLE_PRELIST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t handle_count ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**) ; 
 int /*<<< orphan*/  native_info ; 

__attribute__((used)) static jerry_value_t
FUNC7 (void)
{
  jerryx_escapable_handle_scope scope;
  FUNC6 (&scope);

  jerry_value_t obj;
  for (size_t idx = 0; idx < handle_count; idx ++)
  {
    obj = FUNC4 (FUNC1 ());
    FUNC2 (obj, NULL, &native_info);
  }

  // If leaves `escaped` uninitialized, there will be a style error on linux thrown by compiler
  jerry_value_t escaped = 0;
  FUNC5 (scope, obj, &escaped);
  FUNC0 (scope->prelist_handle_count == JERRYX_HANDLE_PRELIST_SIZE);

  FUNC3 (scope);
  return escaped;
}