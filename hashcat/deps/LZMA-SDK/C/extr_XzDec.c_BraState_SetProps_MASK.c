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
typedef  int UInt32 ;
struct TYPE_2__ {int ip; int methodId; unsigned int delta; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  TYPE_1__ CBraState ;
typedef  scalar_t__ Byte ;

/* Variables and functions */
 int FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  SZ_ERROR_UNSUPPORTED ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  XZ_ID_ARM 132 
#define  XZ_ID_ARMT 131 
 int XZ_ID_Delta ; 
#define  XZ_ID_IA64 130 
#define  XZ_ID_PPC 129 
#define  XZ_ID_SPARC 128 

__attribute__((used)) static SRes FUNC2(void *pp, const Byte *props, size_t propSize, ISzAllocPtr alloc)
{
  CBraState *p = ((CBraState *)pp);
  FUNC1(alloc);
  p->ip = 0;
  if (p->methodId == XZ_ID_Delta)
  {
    if (propSize != 1)
      return SZ_ERROR_UNSUPPORTED;
    p->delta = (unsigned)props[0] + 1;
  }
  else
  {
    if (propSize == 4)
    {
      UInt32 v = FUNC0(props);
      switch (p->methodId)
      {
        case XZ_ID_PPC:
        case XZ_ID_ARM:
        case XZ_ID_SPARC:
          if ((v & 3) != 0)
            return SZ_ERROR_UNSUPPORTED;
          break;
        case XZ_ID_ARMT:
          if ((v & 1) != 0)
            return SZ_ERROR_UNSUPPORTED;
          break;
        case XZ_ID_IA64:
          if ((v & 0xF) != 0)
            return SZ_ERROR_UNSUPPORTED;
          break;
      }
      p->ip = v;
    }
    else if (propSize != 0)
      return SZ_ERROR_UNSUPPORTED;
  }
  return SZ_OK;
}