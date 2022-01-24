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
typedef  int UInt64 ;
typedef  scalar_t__ CXzStreamFlags ;
typedef  scalar_t__ Byte ;
typedef  int BoolInt ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const*,int) ; 
 scalar_t__ FUNC1 (scalar_t__ const*) ; 
 scalar_t__ FUNC2 (scalar_t__ const*) ; 
 scalar_t__ const XZ_FOOTER_SIG_0 ; 
 scalar_t__ const XZ_FOOTER_SIG_1 ; 

__attribute__((used)) static BoolInt FUNC3(CXzStreamFlags flags, UInt64 indexSize, const Byte *buf)
{
  return indexSize == (((UInt64)FUNC2(buf + 4) + 1) << 2)
      && FUNC2(buf) == FUNC0(buf + 4, 6)
      && flags == FUNC1(buf + 8)
      && buf[10] == XZ_FOOTER_SIG_0
      && buf[11] == XZ_FOOTER_SIG_1;
}