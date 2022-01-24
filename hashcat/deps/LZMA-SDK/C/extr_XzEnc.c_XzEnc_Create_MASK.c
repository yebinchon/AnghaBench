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
typedef  scalar_t__ UInt64 ;
struct TYPE_5__ {void* allocBig; void* alloc; scalar_t__ expectedDataSize; int /*<<< orphan*/  xzProps; } ;
typedef  scalar_t__ Int64 ;
typedef  void* ISzAllocPtr ;
typedef  TYPE_1__* CXzEncHandle ;
typedef  TYPE_1__ CXzEnc ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

CXzEncHandle FUNC4(ISzAllocPtr alloc, ISzAllocPtr allocBig)
{
  CXzEnc *p = (CXzEnc *)FUNC0(alloc, sizeof(CXzEnc));
  if (!p)
    return NULL;
  FUNC1(p);
  FUNC2(&p->xzProps);
  FUNC3(&p->xzProps);
  p->expectedDataSize = (UInt64)(Int64)-1;
  p->alloc = alloc;
  p->allocBig = allocBig;
  return p;
}