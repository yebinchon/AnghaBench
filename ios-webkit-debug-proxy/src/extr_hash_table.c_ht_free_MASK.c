#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ht_struct {int dummy; } ;
typedef  TYPE_1__* ht_t ;
struct TYPE_6__ {struct TYPE_6__* buckets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC3(ht_t self) {
  if (self) {
    FUNC1(self);
    FUNC0(self->buckets);
    FUNC2(self, 0, sizeof(struct ht_struct));
    FUNC0(self);
  }
}