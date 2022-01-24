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
struct TYPE_4__ {scalar_t__ buffer; scalar_t__ count; } ;
typedef  TYPE_1__ CSha256 ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/  const*,size_t) ; 

void FUNC2(CSha256 *p, const Byte *data, size_t size)
{
  if (size == 0)
    return;

  {
    unsigned pos = (unsigned)p->count & 0x3F;
    unsigned num;
    
    p->count += size;
    
    num = 64 - pos;
    if (num > size)
    {
      FUNC1(p->buffer + pos, data, size);
      return;
    }
    
    size -= num;
    FUNC1(p->buffer + pos, data, num);
    data += num;
  }

  for (;;)
  {
    FUNC0(p);
    if (size < 64)
      break;
    size -= 64;
    FUNC1(p->buffer, data, 64);
    data += 64;
  }

  if (size != 0)
    FUNC1(p->buffer, data, size);
}