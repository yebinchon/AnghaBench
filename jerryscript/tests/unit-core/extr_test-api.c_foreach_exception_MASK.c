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
typedef  void* jerry_value_t ;
typedef  size_t jerry_size_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (void* const,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 

__attribute__((used)) static bool
FUNC4 (const jerry_value_t name, /**< field name */
                   const jerry_value_t value, /**< field value */
                   void *user_data) /**< user data */
{
  FUNC0 (value);
  FUNC0 (user_data);
  char str_buf_p[128];
  jerry_size_t sz = FUNC2 (name, (jerry_char_t *) str_buf_p, 128);
  str_buf_p[sz] = '\0';

  if (!FUNC3 (str_buf_p, "foxtrot", (size_t) sz))
  {
    FUNC1 (false);
  }

  return true;
}