#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rerere_id {size_t variant; TYPE_1__* collection; } ;
struct TYPE_2__ {scalar_t__* status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rerere_id*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rerere_id *id)
{
	FUNC1(FUNC0(id, "postimage"));
	FUNC1(FUNC0(id, "preimage"));
	id->collection->status[id->variant] = 0;
}