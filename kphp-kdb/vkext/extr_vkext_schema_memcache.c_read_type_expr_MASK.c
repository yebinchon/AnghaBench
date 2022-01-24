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
struct tl_tree {int dummy; } ;

/* Variables and functions */
#define  TLS_ARRAY 130 
#define  TLS_TYPE_EXPR 129 
#define  TLS_TYPE_VAR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct tl_tree* FUNC1 (int*) ; 
 struct tl_tree* FUNC2 (int*) ; 
 struct tl_tree* FUNC3 (int*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 () ; 
 int verbosity ; 

struct tl_tree *FUNC5 (int *var_num) {
  int x = FUNC4 ();
  if (verbosity >= 2) {
    FUNC0 (stderr, "read_type_expr: constructor = 0x%08x\n", x);
  }
  switch (x) {
  case TLS_TYPE_VAR:
    return FUNC3 (var_num);
  case TLS_TYPE_EXPR:
    return FUNC2 (var_num);
  case TLS_ARRAY:
    return FUNC1 (var_num);
  default:
    if (verbosity) {
      FUNC0 (stderr, "x = %d\n", x);
    }
    return 0;
  }     
}