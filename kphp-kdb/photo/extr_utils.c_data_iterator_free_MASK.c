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
struct TYPE_4__ {int new_ids_n; int /*<<< orphan*/  new_local_ids; int /*<<< orphan*/  new_ids; } ;
typedef  TYPE_1__ data_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC2 (data_iterator *it) {
  FUNC0 (it->new_ids, sizeof (int) * it->new_ids_n);
  FUNC0 (it->new_local_ids, sizeof (int) * it->new_ids_n);
  FUNC1 (it, 0, sizeof (*it));
}