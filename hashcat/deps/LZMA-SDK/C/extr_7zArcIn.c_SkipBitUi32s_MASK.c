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
typedef  int UInt32 ;
struct TYPE_4__ {size_t Size; int /*<<< orphan*/  Data; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_1__ CSzData ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  SZ_ERROR_ARCHIVE ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static SRes FUNC3(CSzData *sd, UInt32 numItems)
{
  Byte allAreDefined;
  UInt32 numDefined = numItems;
  FUNC2(allAreDefined);
  if (!allAreDefined)
  {
    size_t numBytes = (numItems + 7) >> 3;
    if (numBytes > sd->Size)
      return SZ_ERROR_ARCHIVE;
    numDefined = FUNC0(sd->Data, numItems);
    FUNC1(sd, numBytes);
  }
  if (numDefined > (sd->Size >> 2))
    return SZ_ERROR_ARCHIVE;
  FUNC1(sd, (size_t)numDefined * 4);
  return SZ_OK;
}