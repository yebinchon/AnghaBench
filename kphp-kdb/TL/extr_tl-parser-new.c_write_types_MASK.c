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
 int /*<<< orphan*/  MAGIC ; 
 int /*<<< orphan*/  TLS_SCHEMA ; 
 int /*<<< orphan*/  TLS_SCHEMA_V2 ; 
 int __f ; 
 scalar_t__ num ; 
 int schema_version ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tl_function_tree ; 
 int /*<<< orphan*/  tl_type_tree ; 
 int /*<<< orphan*/  total_constructors_num ; 
 int /*<<< orphan*/  total_functions_num ; 
 int /*<<< orphan*/  total_types_num ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_function ; 
 int /*<<< orphan*/  write_type ; 
 int /*<<< orphan*/  write_type_constructors ; 

void FUNC4 (int f) {
  __f = f;
  if (schema_version == 1) {
    FUNC3 (TLS_SCHEMA);
  } else if (schema_version == 2) {
    FUNC3 (TLS_SCHEMA_V2);
  } else {
    FUNC3 (MAGIC);
  }
  if (schema_version >= 1) {
    FUNC3 (0);
    FUNC3 (FUNC0 (0));
  }
  num = 0;
  if (schema_version >= 1) {
    FUNC3 (total_types_num);
  }
  FUNC2 (tl_type_tree, write_type);
  if (schema_version >= 1) {
    FUNC3 (total_constructors_num);
  }
  FUNC2 (tl_type_tree, write_type_constructors);
  if (schema_version >= 1) {
    FUNC3 (total_functions_num);
  }
  FUNC1 (tl_function_tree, write_function);
}