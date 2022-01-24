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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (jerry_value_t instanceof,
                 jerry_value_t constructor)
{
  jerry_value_t instance = FUNC2 (constructor, NULL, 0);
  jerry_value_t args[2] =
  {
    instance, constructor
  };

  jerry_value_t undefined = FUNC3 ();
  jerry_value_t result = FUNC1 (instanceof, undefined, args, 2);
  FUNC5 (undefined);

  FUNC0 (!FUNC7 (result));
  FUNC0 (FUNC6 (result));

  FUNC0 (FUNC4 (result));

  FUNC5 (instance);
  FUNC5 (result);
}