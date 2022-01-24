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
typedef  scalar_t__ SRes ;
typedef  int /*<<< orphan*/  ICompressProgress ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SZ_ERROR_PROGRESS ; 
 scalar_t__ SZ_OK ; 

__attribute__((used)) static SRes FUNC1(ICompressProgress *p, UInt64 inSize, UInt64 outSize)
{
  return (p && FUNC0(p, inSize, outSize) != SZ_OK) ? SZ_ERROR_PROGRESS : SZ_OK;
}