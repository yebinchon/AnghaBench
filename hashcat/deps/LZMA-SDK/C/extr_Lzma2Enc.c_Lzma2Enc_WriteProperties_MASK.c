#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UInt32 ;
struct TYPE_3__ {int /*<<< orphan*/  lzmaProps; } ;
struct TYPE_4__ {TYPE_1__ props; } ;
typedef  scalar_t__ CLzma2EncHandle ;
typedef  TYPE_2__ CLzma2Enc ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

Byte FUNC2(CLzma2EncHandle pp)
{
  CLzma2Enc *p = (CLzma2Enc *)pp;
  unsigned i;
  UInt32 dicSize = FUNC1(&p->props.lzmaProps);
  for (i = 0; i < 40; i++)
    if (dicSize <= FUNC0(i))
      break;
  return (Byte)i;
}