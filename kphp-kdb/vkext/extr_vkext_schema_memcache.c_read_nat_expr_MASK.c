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
#define  TLS_NAT_CONST 129 
#define  TLS_NAT_VAR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct tl_tree* FUNC1 (int*) ; 
 struct tl_tree* FUNC2 (int*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 () ; 
 int verbosity ; 

struct tl_tree *FUNC4 (int *var_num) {
  int x = FUNC3 ();
  if (verbosity >= 2) {
    FUNC0 (stderr, "read_nat_expr: constructor = 0x%08x\n", x);
  }
  switch (x) {
  case TLS_NAT_CONST:
    return FUNC1 (var_num);
  case TLS_NAT_VAR:
    return FUNC2 (var_num);
  default:
    if (verbosity) {
      FUNC0 (stderr, "x = %d\n", x);
    }
    return 0;
  }     
}