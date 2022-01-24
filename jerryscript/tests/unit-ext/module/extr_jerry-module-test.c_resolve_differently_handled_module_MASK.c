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
typedef  int /*<<< orphan*/  jerry_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jerry_char_t ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ name_string ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5 (const jerry_value_t name,
                                    jerry_value_t *result)
{
  jerry_size_t name_size = FUNC2 (name);
  FUNC0 (jerry_char_t, name_string, name_size);
  FUNC3 (name, name_string, name_size);

  if (!FUNC4 ((char *) name_string, "differently-handled-module", name_size))
  {
    (*result) = FUNC1 (29);
    return true;
  }
  return false;
}