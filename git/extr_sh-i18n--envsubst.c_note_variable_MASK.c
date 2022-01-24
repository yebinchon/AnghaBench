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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  variables_set ; 
 char* FUNC1 (char const*,size_t) ; 

__attribute__((used)) static void
FUNC2 (const char *var_ptr, size_t var_len)
{
  char *string = FUNC1 (var_ptr, var_len);

  FUNC0 (&variables_set, string);
}