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
typedef  int /*<<< orphan*/  CXzStreamFlags ;
typedef  int /*<<< orphan*/  CXzEncIndex ;

/* Variables and functions */
 scalar_t__ SZ_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

SRes FUNC4(ISeqOutStream *outStream)
{
  SRes res;
  CXzEncIndex xzIndex;
  FUNC0(&xzIndex);
  res = FUNC3((CXzStreamFlags)0, outStream);
  if (res == SZ_OK)
    res = FUNC2(&xzIndex, (CXzStreamFlags)0, outStream);
  FUNC1(&xzIndex, NULL); // g_Alloc
  return res;
}