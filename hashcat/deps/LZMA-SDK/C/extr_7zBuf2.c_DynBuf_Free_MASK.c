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
struct TYPE_3__ {scalar_t__ pos; scalar_t__ size; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  TYPE_1__ CDynBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC1(CDynBuf *p, ISzAllocPtr alloc)
{
  FUNC0(alloc, p->data);
  p->data = 0;
  p->size = 0;
  p->pos = 0;
}