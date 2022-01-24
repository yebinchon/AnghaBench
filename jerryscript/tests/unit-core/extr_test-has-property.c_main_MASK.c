#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC14 (void)
{
  FUNC1 ();

  FUNC10 (JERRY_INIT_EMPTY);

  jerry_value_t object = FUNC5 ();
  jerry_value_t prop_name = FUNC6 ((jerry_char_t *) "something");
  jerry_value_t prop_value = FUNC4 (true);
  jerry_value_t proto_object = FUNC5 ();

  /* Assert that an empty object does not have the property in question */
  FUNC2 (FUNC9 (object, prop_name), false);
  FUNC2 (FUNC8 (object, prop_name), false);

  FUNC2 (FUNC13 (object, proto_object), true);

  /* If the object has a prototype, that still means it doesn't have the property */
  FUNC2 (FUNC9 (object, prop_name), false);
  FUNC2 (FUNC8 (object, prop_name), false);

  FUNC2 (FUNC12 (proto_object, prop_name, prop_value), true);

  /* After setting the property on the prototype, it must be there, but not on the object */
  FUNC2 (FUNC9 (object, prop_name), true);
  FUNC2 (FUNC8 (object, prop_name), false);

  FUNC0 (FUNC7 (proto_object, prop_name));
  FUNC2 (FUNC12 (object, prop_name, prop_value), true);

  /* After relocating the property onto the object, it must be there */
  FUNC2 (FUNC9 (object, prop_name), true);
  FUNC2 (FUNC8 (object, prop_name), true);

  FUNC11 (object);
  FUNC11 (prop_name);
  FUNC11 (prop_value);
  FUNC11 (proto_object);

  FUNC3 ();

  return 0;
}