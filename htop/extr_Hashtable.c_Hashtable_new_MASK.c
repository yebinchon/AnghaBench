#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size; int owner; int /*<<< orphan*/ ** buckets; scalar_t__ items; } ;
typedef  int /*<<< orphan*/  HashtableItem ;
typedef  TYPE_1__ Hashtable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int) ; 
 TYPE_1__* FUNC3 (int) ; 

Hashtable* FUNC4(int size, bool owner) {
   Hashtable* this;
   
   this = FUNC3(sizeof(Hashtable));
   this->items = 0;
   this->size = size;
   this->buckets = (HashtableItem**) FUNC2(size, sizeof(HashtableItem*));
   this->owner = owner;
   FUNC1(FUNC0(this));
   return this;
}