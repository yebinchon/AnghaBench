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
typedef  scalar_t__ UInt64 ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ILookInStream ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void const**,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_ERROR_INPUT_EOF ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,size_t) ; 

__attribute__((used)) static SRes FUNC4(UInt64 inSize, ILookInStream *inStream, Byte *outBuffer)
{
  while (inSize > 0)
  {
    const void *inBuf;
    size_t curSize = (1 << 18);
    if (curSize > inSize)
      curSize = (size_t)inSize;
    FUNC2(FUNC0(inStream, &inBuf, &curSize));
    if (curSize == 0)
      return SZ_ERROR_INPUT_EOF;
    FUNC3(outBuffer, inBuf, curSize);
    outBuffer += curSize;
    inSize -= curSize;
    FUNC2(FUNC1(inStream, curSize));
  }
  return SZ_OK;
}