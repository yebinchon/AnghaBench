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
struct TYPE_3__ {int /*<<< orphan*/  (* on_resolve_p ) () ;int /*<<< orphan*/ * name_p; struct TYPE_3__* next_p; } ;
typedef  TYPE_1__ jerryx_native_module_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  scalar_t__ jerry_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_ERROR_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_1__* first_module_p ; 
 int /*<<< orphan*/  jerry_char_t ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 scalar_t__ name_string ; 
 int /*<<< orphan*/  on_resolve_absent ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static bool
FUNC7 (const jerry_value_t canonical_name, /**< canonical name of the module */
                              jerry_value_t *result) /**< [out] where to put the resulting module instance */
{
  const jerryx_native_module_t *module_p = NULL;

  jerry_size_t name_size = FUNC1 (canonical_name);
  FUNC0 (jerry_char_t, name_string, name_size);
  FUNC2 (canonical_name, name_string, name_size);

  /* Look for the module by its name in the list of module definitions. */
  for (module_p = first_module_p; module_p != NULL; module_p = module_p->next_p)
  {
    if (module_p->name_p != NULL
        && FUNC4 ((char *) module_p->name_p) == name_size
        && !FUNC5 ((char *) module_p->name_p, (char *) name_string, name_size))
    {
      /* If we find the module by its name we load it and cache it if it has an on_resolve () and complain otherwise. */
      (*result) = ((module_p->on_resolve_p) ? module_p->on_resolve_p ()
                                            : FUNC3 (JERRY_ERROR_TYPE,
                                                                          on_resolve_absent,
                                                                          canonical_name));
      return true;
    }
  }

  return false;
}