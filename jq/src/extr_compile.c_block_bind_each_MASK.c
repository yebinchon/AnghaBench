#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef  TYPE_1__ inst ;
struct TYPE_9__ {TYPE_1__* first; } ;
typedef  TYPE_2__ block ;

/* Variables and functions */
 int OP_HAS_BINDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(block binder, block body, int bindflags) {
  FUNC0(FUNC2(binder, bindflags));
  bindflags |= OP_HAS_BINDING;
  int nrefs = 0;
  for (inst* curr = binder.first; curr; curr = curr->next) {
    nrefs += FUNC1(FUNC3(curr), body, bindflags, 0);
  }
  return nrefs;
}