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
struct alloca_header {struct alloca_header* next; } ;
struct TYPE_4__ {struct alloca_header* mems; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct alloca_header*) ; 

__attribute__((used)) static void
FUNC1(mrb_state *mrb)
{
  struct alloca_header *p;
  struct alloca_header *tmp;

  if (mrb == NULL) return;
  p = mrb->mems;

  while (p) {
    tmp = p;
    p = p->next;
    FUNC0(mrb, tmp);
  }
}