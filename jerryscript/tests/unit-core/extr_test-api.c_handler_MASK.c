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
typedef  scalar_t__ jerry_value_t ;
typedef  int jerry_size_t ;
typedef  int jerry_length_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__ const) ; 
 int FUNC3 (scalar_t__ const,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (scalar_t__ const) ; 
 int FUNC5 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int,unsigned int,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 

__attribute__((used)) static jerry_value_t
FUNC8 (const jerry_value_t func_obj_val, /**< function object */
         const jerry_value_t this_val, /**< this value */
         const jerry_value_t args_p[], /**< arguments list */
         const jerry_length_t args_cnt) /**< arguments length */
{
  char buffer[32];
  jerry_size_t sz;

  FUNC6 ("ok %u %u %p %u\n",
          (unsigned int) func_obj_val, (unsigned int) this_val, (void *) args_p, (unsigned int) args_cnt);

  FUNC0 (args_cnt == 2);

  FUNC0 (FUNC5 (args_p[0]));
  sz = FUNC2 (args_p[0]);
  FUNC0 (sz == 1);
  sz = FUNC3 (args_p[0],
                                    (jerry_char_t *) buffer,
                                    sz);
  FUNC0 (sz == 1);
  FUNC0 (!FUNC7 (buffer, "1", (size_t) sz));

  FUNC0 (FUNC4 (args_p[1]));

  return FUNC1 ((jerry_char_t *) "string from handler");
}