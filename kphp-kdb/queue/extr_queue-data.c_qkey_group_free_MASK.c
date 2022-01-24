#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int n; struct TYPE_4__* k; struct TYPE_4__* r; } ;
typedef  TYPE_1__ qkey_group ;
typedef  int /*<<< orphan*/  qkey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  keys_memory ; 

void FUNC2 (qkey_group *k) {
  keys_memory -= FUNC1();
  FUNC0 (k->r, sizeof (char) * k->n);
  FUNC0 (k->k, sizeof (qkey *) * k->n);
  FUNC0 (k, sizeof (qkey_group));
  keys_memory += FUNC1();
}