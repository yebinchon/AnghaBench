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
typedef  int /*<<< orphan*/  jv ;
typedef  enum cmp_op { ____Placeholder_cmp_op } cmp_op ;

/* Variables and functions */
 int CMP_OP_GREATER ; 
 int CMP_OP_GREATEREQ ; 
 int CMP_OP_LESS ; 
 int CMP_OP_LESSEQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static jv FUNC3(jv input, jv a, jv b, enum cmp_op op) {
  FUNC2(input);
  int r = FUNC1(a, b);
  return FUNC0((op == CMP_OP_LESS && r < 0) ||
                 (op == CMP_OP_LESSEQ && r <= 0) ||
                 (op == CMP_OP_GREATEREQ && r >= 0) ||
                 (op == CMP_OP_GREATER && r > 0));
}