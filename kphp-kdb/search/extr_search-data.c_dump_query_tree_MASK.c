#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int op; struct TYPE_3__* right; struct TYPE_3__* left; int /*<<< orphan*/  word; } ;
typedef  TYPE_1__ query_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  qn_and 133 
#define  qn_false 132 
#define  qn_minus 131 
#define  qn_or 130 
#define  qn_true 129 
#define  qn_word 128 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2 (query_node_t *X) {
  if (!X) {
    FUNC0 (stderr, "(NULL)");
    return;
  }
  switch (X->op) {
    case qn_false:
      FUNC0 (stderr, "(false)");
      return;
    case qn_true:
      FUNC0 (stderr, "(true)");
      return;
    case qn_word:
      FUNC0 (stderr, "(word %016x, freq = %d)", X->word, FUNC1 (X->word));
      return;
    case qn_and:
      FUNC0 (stderr, "(and ");
      break;
    case qn_or:
      FUNC0 (stderr, "(or ");
      break;
    case qn_minus:
      FUNC0 (stderr, "(minus ");
      break;
    default:
      FUNC0 (stderr, "(???%d ", X->op);
  }
  FUNC2 (X->left);
  FUNC0 (stderr, " ");
  FUNC2 (X->right);
  FUNC0 (stderr, ")");
}