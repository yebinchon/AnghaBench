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
struct TYPE_3__ {int /*<<< orphan*/ * crossBlock; scalar_t__ inBufSize; int /*<<< orphan*/  alloc; } ;
typedef  TYPE_1__ CMtDec ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MTDEC__LINK_DATA_OFFSET ; 

Byte *FUNC2(CMtDec *p)
{
  Byte *cr = p->crossBlock;
  if (!cr)
  {
    cr = (Byte *)FUNC0(p->alloc, MTDEC__LINK_DATA_OFFSET + p->inBufSize);
    if (!cr)
      return NULL;
    p->crossBlock = cr;
  }
  return FUNC1(cr);
}