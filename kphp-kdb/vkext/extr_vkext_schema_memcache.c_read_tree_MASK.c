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
#define  TLS_TREE_ARRAY 132 
#define  TLS_TREE_NAT_CONST 131 
#define  TLS_TREE_NAT_VAR 130 
#define  TLS_TREE_TYPE 129 
#define  TLS_TREE_TYPE_VAR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct tl_tree* FUNC1 (int*) ; 
 struct tl_tree* FUNC2 (int*) ; 
 struct tl_tree* FUNC3 (int*) ; 
 struct tl_tree* FUNC4 (int*) ; 
 struct tl_tree* FUNC5 (int*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 () ; 
 int verbosity ; 

struct tl_tree *FUNC7 (int *var_num) {
  int x = FUNC6 ();
  if (verbosity >= 2) {
    FUNC0 (stderr, "read_tree: constructor = 0x%08x\n", x);
  }
  switch (x) {
  case TLS_TREE_NAT_CONST:
    return FUNC2 (var_num);
  case TLS_TREE_NAT_VAR:
    return FUNC3 (var_num);
  case TLS_TREE_TYPE_VAR:
    return FUNC5 (var_num);
  case TLS_TREE_TYPE:
    return FUNC4 (var_num);
  case TLS_TREE_ARRAY:
    return FUNC1 (var_num);
  default:
    if (verbosity) {
      FUNC0 (stderr, "x = %d\n", x);
    }
    return 0;
  }    
}