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
typedef  int /*<<< orphan*/  jerryx_module_resolver_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* init_cb ) (void*) ;int /*<<< orphan*/  (* deinit_cb ) (void*) ;} ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 TYPE_1__ jerryx_module_manager ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const**,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

void
FUNC5 (const jerry_value_t name, /**< name of the module to remove, or undefined */
                           const jerryx_module_resolver_t **resolvers_p, /**< list of resolvers */
                           size_t resolver_count) /**< number of resolvers in @p resolvers */
{
  void *instances_p = FUNC0 (&jerryx_module_manager);

  if (FUNC1 (name))
  {
    /* We were requested to clear the entire cache, so we bounce the context data in the most agnostic way possible. */
    jerryx_module_manager.deinit_cb (instances_p);
    jerryx_module_manager.init_cb (instances_p);
    return;
  }

  /* Delete the requested module from the cache if it's there. */
  FUNC2 (name, resolvers_p, resolver_count, NULL);
}