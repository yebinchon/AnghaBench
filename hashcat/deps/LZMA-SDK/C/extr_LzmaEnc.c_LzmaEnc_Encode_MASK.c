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
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  int /*<<< orphan*/  ISeqOutStream ;
typedef  int /*<<< orphan*/  ISeqInStream ;
typedef  int /*<<< orphan*/  ICompressProgress ;
typedef  scalar_t__ CLzmaEncHandle ;
typedef  int /*<<< orphan*/  CLzmaEnc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

SRes FUNC3(CLzmaEncHandle pp, ISeqOutStream *outStream, ISeqInStream *inStream, ICompressProgress *progress,
    ISzAllocPtr alloc, ISzAllocPtr allocBig)
{
  FUNC2(FUNC1(pp, outStream, inStream, alloc, allocBig));
  return FUNC0((CLzmaEnc *)pp, progress);
}