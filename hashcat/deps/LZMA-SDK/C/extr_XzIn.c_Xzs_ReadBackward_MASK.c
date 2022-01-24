#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UInt64 ;
struct TYPE_9__ {scalar_t__ startOffset; } ;
struct TYPE_8__ {scalar_t__ num; scalar_t__ numAllocated; TYPE_2__* streams; } ;
typedef  scalar_t__ SRes ;
typedef  scalar_t__ Int64 ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  int /*<<< orphan*/  ILookInStream ;
typedef  int /*<<< orphan*/  ICompressProgress ;
typedef  TYPE_1__ CXzs ;
typedef  TYPE_2__ CXzStream ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ SZ_ERROR_MEM ; 
 scalar_t__ SZ_ERROR_PROGRESS ; 
 scalar_t__ SZ_OK ; 
 int /*<<< orphan*/  SZ_SEEK_END ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 

SRes FUNC9(CXzs *p, ILookInStream *stream, Int64 *startOffset, ICompressProgress *progress, ISzAllocPtr alloc)
{
  Int64 endOffset = 0;
  FUNC5(FUNC1(stream, &endOffset, SZ_SEEK_END));
  *startOffset = endOffset;
  for (;;)
  {
    CXzStream st;
    SRes res;
    FUNC6(&st);
    res = FUNC7(&st, stream, startOffset, alloc);
    st.startOffset = *startOffset;
    FUNC5(res);
    if (p->num == p->numAllocated)
    {
      size_t newNum = p->num + p->num / 4 + 1;
      Byte *data = (Byte *)FUNC2(alloc, newNum * sizeof(CXzStream));
      if (!data)
        return SZ_ERROR_MEM;
      p->numAllocated = newNum;
      if (p->num != 0)
        FUNC8(data, p->streams, p->num * sizeof(CXzStream));
      FUNC3(alloc, p->streams);
      p->streams = (CXzStream *)data;
    }
    p->streams[p->num++] = st;
    if (*startOffset == 0)
      break;
    FUNC5(FUNC4(stream, *startOffset));
    if (progress && FUNC0(progress, endOffset - *startOffset, (UInt64)(Int64)-1) != SZ_OK)
      return SZ_ERROR_PROGRESS;
  }
  return SZ_OK;
}