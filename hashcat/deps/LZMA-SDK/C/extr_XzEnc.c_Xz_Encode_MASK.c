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
typedef  scalar_t__ SRes ;
typedef  int /*<<< orphan*/  ISeqOutStream ;
typedef  int /*<<< orphan*/  ISeqInStream ;
typedef  int /*<<< orphan*/  ICompressProgress ;
typedef  int /*<<< orphan*/  CXzProps ;
typedef  int /*<<< orphan*/  CXzEncHandle ;

/* Variables and functions */
 scalar_t__ SZ_ERROR_MEM ; 
 scalar_t__ SZ_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  g_Alloc ; 
 int /*<<< orphan*/  g_BigAlloc ; 

SRes FUNC4(ISeqOutStream *outStream, ISeqInStream *inStream,
    const CXzProps *props, ICompressProgress *progress)
{
  SRes res;
  CXzEncHandle xz = FUNC0(&g_Alloc, &g_BigAlloc);
  if (!xz)
    return SZ_ERROR_MEM;
  res = FUNC3(xz, props);
  if (res == SZ_OK)
    res = FUNC2(xz, outStream, inStream, progress);
  FUNC1(xz);
  return res;
}