#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UInt64 ;
struct TYPE_7__ {scalar_t__ dicPos; scalar_t__ dicBufSize; int /*<<< orphan*/ * dic; } ;
typedef  scalar_t__ SizeT ;
typedef  scalar_t__ SRes ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  int /*<<< orphan*/  ILookInStream ;
typedef  scalar_t__ ELzmaStatus ;
typedef  TYPE_1__ CLzmaDec ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void const**,size_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  LZMA_FINISH_END ; 
 scalar_t__ LZMA_STATUS_FINISHED_WITH_MARK ; 
 scalar_t__ LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/  const*,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ SZ_ERROR_DATA ; 
 scalar_t__ SZ_OK ; 

__attribute__((used)) static SRes FUNC8(const Byte *props, unsigned propsSize, UInt64 inSize, ILookInStream *inStream,
    Byte *outBuffer, SizeT outSize, ISzAllocPtr allocMain)
{
  CLzmaDec state;
  SRes res = SZ_OK;

  FUNC3(&state);
  FUNC7(FUNC2(&state, props, propsSize, allocMain));
  state.dic = outBuffer;
  state.dicBufSize = outSize;
  FUNC6(&state);

  for (;;)
  {
    const void *inBuf = NULL;
    size_t lookahead = (1 << 18);
    if (lookahead > inSize)
      lookahead = (size_t)inSize;
    res = FUNC0(inStream, &inBuf, &lookahead);
    if (res != SZ_OK)
      break;

    {
      SizeT inProcessed = (SizeT)lookahead, dicPos = state.dicPos;
      ELzmaStatus status;
      res = FUNC4(&state, outSize, (const Byte *)inBuf, &inProcessed, LZMA_FINISH_END, &status);
      lookahead -= inProcessed;
      inSize -= inProcessed;
      if (res != SZ_OK)
        break;

      if (status == LZMA_STATUS_FINISHED_WITH_MARK)
      {
        if (outSize != state.dicPos || inSize != 0)
          res = SZ_ERROR_DATA;
        break;
      }

      if (outSize == state.dicPos && inSize == 0 && status == LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK)
        break;

      if (inProcessed == 0 && dicPos == state.dicPos)
      {
        res = SZ_ERROR_DATA;
        break;
      }

      res = FUNC1(inStream, inProcessed);
      if (res != SZ_OK)
        break;
    }
  }

  FUNC5(&state, allocMain);
  return res;
}