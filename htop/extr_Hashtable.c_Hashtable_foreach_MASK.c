#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int size; TYPE_1__** buckets; } ;
struct TYPE_5__ {struct TYPE_5__* next; int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  (* Hashtable_PairFunction ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ;
typedef  TYPE_1__ HashtableItem ;
typedef  TYPE_2__ Hashtable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(Hashtable* this, Hashtable_PairFunction f, void* userData) {
   FUNC1(FUNC0(this));
   for (int i = 0; i < this->size; i++) {
      HashtableItem* walk = this->buckets[i];
      while (walk != NULL) {
         f(walk->key, walk->value, userData);
         walk = walk->next;
      }
   }
   FUNC1(FUNC0(this));
}