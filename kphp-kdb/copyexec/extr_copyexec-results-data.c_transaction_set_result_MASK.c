#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int value; } ;
typedef  TYPE_1__ tree_t ;
struct TYPE_8__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_2__ transaction_t ;
struct TYPE_9__ {int /*<<< orphan*/  host_id; int /*<<< orphan*/  volume_id; } ;
typedef  TYPE_3__ host_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (host_t *H, int transaction_id, unsigned result) {
  transaction_t *T = FUNC0 (H->volume_id, transaction_id, 1);
  tree_t *P = FUNC3 (T->root, H->host_id);
  if (P != NULL) {
    P->value = result;
  } else {
    T->root = FUNC2 (T->root, H->host_id, FUNC1 (), result);
  }
  return 0;
}