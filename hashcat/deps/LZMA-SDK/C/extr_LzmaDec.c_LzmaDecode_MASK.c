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
struct TYPE_7__ {scalar_t__ dicPos; scalar_t__ dicBufSize; int /*<<< orphan*/ * dic; } ;
typedef  scalar_t__ SizeT ;
typedef  scalar_t__ SRes ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  scalar_t__ ELzmaStatus ;
typedef  int /*<<< orphan*/  ELzmaFinishMode ;
typedef  TYPE_1__ CLzmaDec ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 scalar_t__ LZMA_STATUS_NEEDS_MORE_INPUT ; 
 scalar_t__ LZMA_STATUS_NOT_SPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/  const*,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ RC_INIT_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ SZ_ERROR_INPUT_EOF ; 
 scalar_t__ SZ_OK ; 

SRes FUNC6(Byte *dest, SizeT *destLen, const Byte *src, SizeT *srcLen,
    const Byte *propData, unsigned propSize, ELzmaFinishMode finishMode,
    ELzmaStatus *status, ISzAllocPtr alloc)
{
  CLzmaDec p;
  SRes res;
  SizeT outSize = *destLen, inSize = *srcLen;
  *destLen = *srcLen = 0;
  *status = LZMA_STATUS_NOT_SPECIFIED;
  if (inSize < RC_INIT_SIZE)
    return SZ_ERROR_INPUT_EOF;
  FUNC1(&p);
  FUNC5(FUNC0(&p, propData, propSize, alloc));
  p.dic = dest;
  p.dicBufSize = outSize;
  FUNC4(&p);
  *srcLen = inSize;
  res = FUNC2(&p, outSize, src, srcLen, finishMode, status);
  *destLen = p.dicPos;
  if (res == SZ_OK && *status == LZMA_STATUS_NEEDS_MORE_INPUT)
    res = SZ_ERROR_INPUT_EOF;
  FUNC3(&p, alloc);
  return res;
}