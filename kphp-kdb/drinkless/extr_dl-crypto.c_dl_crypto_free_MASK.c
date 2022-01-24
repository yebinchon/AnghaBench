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
struct TYPE_3__ {scalar_t__ rand_n; scalar_t__ val_n; int /*<<< orphan*/  perm_last; int /*<<< orphan*/  perm_middle; int /*<<< orphan*/  perm_first; } ;
typedef  TYPE_1__ dl_crypto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1 (dl_crypto *cr) {
  FUNC0 (cr->perm_first, sizeof (int) * (size_t)cr->val_n);
  FUNC0 (cr->perm_middle, sizeof (int) * (size_t)(cr->val_n + cr->rand_n));
  FUNC0 (cr->perm_last, sizeof (int) * (size_t)(cr->val_n + cr->rand_n));
}