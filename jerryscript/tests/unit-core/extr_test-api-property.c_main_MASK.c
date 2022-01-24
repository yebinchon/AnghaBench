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
typedef  int /*<<< orphan*/  jerry_value_t ;
struct TYPE_6__ {int is_value_defined; int is_writable_defined; int is_writable; int is_enumerable_defined; int is_enumerable; int is_configurable_defined; int is_configurable; int is_get_defined; int is_set_defined; int /*<<< orphan*/  setter; int /*<<< orphan*/  getter; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ jerry_property_descriptor_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 

int
FUNC17 (void)
{
  FUNC1 ();

  FUNC10 (JERRY_INIT_EMPTY);

  /* Test: init property descriptor */
  jerry_property_descriptor_t prop_desc;
  FUNC11 (&prop_desc);
  FUNC0 (prop_desc.is_value_defined == false);
  FUNC0 (FUNC16 (prop_desc.value));
  FUNC0 (prop_desc.is_writable_defined == false);
  FUNC0 (prop_desc.is_writable == false);
  FUNC0 (prop_desc.is_enumerable_defined == false);
  FUNC0 (prop_desc.is_enumerable == false);
  FUNC0 (prop_desc.is_configurable_defined == false);
  FUNC0 (prop_desc.is_configurable == false);
  FUNC0 (prop_desc.is_get_defined == false);
  FUNC0 (FUNC16 (prop_desc.getter));
  FUNC0 (prop_desc.is_set_defined == false);
  FUNC0 (FUNC16 (prop_desc.setter));

  /* Test: define own properties */
  jerry_value_t global_obj_val = FUNC8 ();
  jerry_value_t prop_name = FUNC4 ((const jerry_char_t *) "my_defined_property");
  prop_desc.is_value_defined = true;
  prop_desc.value = FUNC2 (prop_name);
  jerry_value_t res = FUNC5 (global_obj_val, prop_name, &prop_desc);
  FUNC0 (!FUNC14 (res));
  FUNC0 (FUNC13 (res));
  FUNC0 (FUNC7 (res));
  FUNC12 (res);
  FUNC6 (&prop_desc);

  /* Test: get own property descriptor */
  bool is_ok = FUNC9 (global_obj_val, prop_name, &prop_desc);
  FUNC0 (is_ok);
  FUNC0 (prop_desc.is_value_defined == true);
  FUNC0 (FUNC15 (prop_desc.value));
  FUNC0 (prop_desc.is_writable == false);
  FUNC0 (prop_desc.is_enumerable == false);
  FUNC0 (prop_desc.is_configurable == false);
  FUNC0 (prop_desc.is_get_defined == false);
  FUNC0 (FUNC16 (prop_desc.getter));
  FUNC0 (prop_desc.is_set_defined == false);
  FUNC0 (FUNC16 (prop_desc.setter));
  FUNC12 (prop_name);
  FUNC6 (&prop_desc);

  FUNC12 (global_obj_val);
  FUNC3 ();

  return 0;
}