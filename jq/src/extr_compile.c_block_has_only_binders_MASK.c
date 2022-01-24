#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ op; struct TYPE_5__* next; } ;
typedef  TYPE_1__ inst ;
struct TYPE_6__ {TYPE_1__* first; } ;
typedef  TYPE_2__ block ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 scalar_t__ MODULEMETA ; 
 int OP_BIND_WILDCARD ; 
 int OP_HAS_BINDING ; 
 TYPE_3__* FUNC0 (scalar_t__) ; 

int FUNC1(block binders, int bindflags) {
  bindflags |= OP_HAS_BINDING;
  bindflags &= ~OP_BIND_WILDCARD;
  for (inst* curr = binders.first; curr; curr = curr->next) {
    if ((FUNC0(curr->op)->flags & bindflags) != bindflags && curr->op != MODULEMETA) {
      return 0;
    }
  }
  return 1;
}