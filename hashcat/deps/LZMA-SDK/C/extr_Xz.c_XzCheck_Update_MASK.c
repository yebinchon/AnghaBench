#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mode; int /*<<< orphan*/  sha; int /*<<< orphan*/  crc64; int /*<<< orphan*/  crc; } ;
typedef  TYPE_1__ CXzCheck ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
#define  XZ_CHECK_CRC32 130 
#define  XZ_CHECK_CRC64 129 
#define  XZ_CHECK_SHA256 128 

void FUNC3(CXzCheck *p, const void *data, size_t size)
{
  switch (p->mode)
  {
    case XZ_CHECK_CRC32: p->crc = FUNC1(p->crc, data, size); break;
    case XZ_CHECK_CRC64: p->crc64 = FUNC0(p->crc64, data, size); break;
    case XZ_CHECK_SHA256: FUNC2(&p->sha, (const Byte *)data, size); break;
  }
}