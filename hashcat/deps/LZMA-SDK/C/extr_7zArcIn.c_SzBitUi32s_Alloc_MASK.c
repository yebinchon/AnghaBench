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
struct TYPE_3__ {int /*<<< orphan*/ * Vals; int /*<<< orphan*/ * Defs; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  TYPE_1__ CSzBitUi32s ;

/* Variables and functions */
 int /*<<< orphan*/  Byte ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  UInt32 ; 

__attribute__((used)) static SRes FUNC1(CSzBitUi32s *p, size_t num, ISzAllocPtr alloc)
{
  if (num == 0)
  {
    p->Defs = NULL;
    p->Vals = NULL;
  }
  else
  {
    FUNC0(Byte, p->Defs, (num + 7) >> 3, alloc);
    FUNC0(UInt32, p->Vals, num, alloc);
  }
  return SZ_OK;
}