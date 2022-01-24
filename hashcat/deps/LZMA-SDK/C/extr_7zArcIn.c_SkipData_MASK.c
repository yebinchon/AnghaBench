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
struct TYPE_5__ {scalar_t__ Size; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_1__ CSzData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  SZ_ERROR_ARCHIVE ; 
 int /*<<< orphan*/  SZ_OK ; 

__attribute__((used)) static SRes FUNC3(CSzData *sd)
{
  UInt64 size;
  FUNC0(FUNC1(sd, &size));
  if (size > sd->Size)
    return SZ_ERROR_ARCHIVE;
  FUNC2(sd, size);
  return SZ_OK;
}