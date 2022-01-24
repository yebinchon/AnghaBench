#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UInt16 ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_1__ CBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  SZ_ERROR_MEM ; 
 int /*<<< orphan*/  SZ_OK ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 size_t FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static SRes FUNC3(CBuf *dest, const UInt16 *src, size_t srcLen)
{
  size_t destLen = FUNC2(src, src + srcLen);
  destLen += 1;
  if (!FUNC0(dest, destLen))
    return SZ_ERROR_MEM;
  *FUNC1(dest->data, src, src + srcLen) = 0;
  return SZ_OK;
}