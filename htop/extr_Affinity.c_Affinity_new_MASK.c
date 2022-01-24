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
struct TYPE_3__ {int size; int /*<<< orphan*/ * pl; void* cpus; } ;
typedef  int /*<<< orphan*/  ProcessList ;
typedef  TYPE_1__ Affinity ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 

Affinity* FUNC1(ProcessList* pl) {
   Affinity* this = FUNC0(1, sizeof(Affinity));
   this->size = 8;
   this->cpus = FUNC0(this->size, sizeof(int));
   this->pl = pl;
   return this;
}