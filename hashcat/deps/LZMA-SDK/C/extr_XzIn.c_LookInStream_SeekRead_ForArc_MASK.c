#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  UInt64 ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ILookInStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static SRes FUNC3(ILookInStream *stream, UInt64 offset, void *buf, size_t size)
{
  FUNC2(FUNC1(stream, offset));
  return FUNC0(stream, buf, size);
  /* return LookInStream_Read2(stream, buf, size, SZ_ERROR_NO_ARCHIVE); */
}