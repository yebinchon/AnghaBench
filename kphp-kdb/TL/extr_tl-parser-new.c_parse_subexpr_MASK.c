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
struct tree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  PARSE_FAIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ S ; 
 int /*<<< orphan*/  T ; 
 int /*<<< orphan*/  parse_nat_const ; 
 int /*<<< orphan*/  parse_term ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  type_subexpr ; 

struct tree *FUNC5 (void) {
  FUNC2 (type_subexpr);
  int was_term = 0;
  int cc = 0;

  while (1) {
    FUNC3 (parse_nat_const);
    if (S) {
      FUNC4 (T, S);
    } else if (!was_term) {
      was_term = 1;
      FUNC3 (parse_term);
      if (S) {
        FUNC4 (T, S);       
      } else {
        break;
      }
    }
    cc ++;
    if (!FUNC1 ('+')) {
      break;
    }
    FUNC0 ("+");
  }
  if (!cc) {
    PARSE_FAIL;
  } else {
    PARSE_OK;
  }
}