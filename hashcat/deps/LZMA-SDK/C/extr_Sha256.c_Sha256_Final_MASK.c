#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UInt64 ;
typedef  int /*<<< orphan*/  UInt32 ;
struct TYPE_5__ {int count; int* buffer; int /*<<< orphan*/ * state; } ;
typedef  TYPE_1__ CSha256 ;
typedef  int Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(CSha256 *p, Byte *digest)
{
  unsigned pos = (unsigned)p->count & 0x3F;
  unsigned i;
  
  p->buffer[pos++] = 0x80;
  
  while (pos != (64 - 8))
  {
    pos &= 0x3F;
    if (pos == 0)
      FUNC2(p);
    p->buffer[pos++] = 0;
  }

  {
    UInt64 numBits = (p->count << 3);
    FUNC0(p->buffer + 64 - 8, (UInt32)(numBits >> 32));
    FUNC0(p->buffer + 64 - 4, (UInt32)(numBits));
  }
  
  FUNC2(p);

  for (i = 0; i < 8; i += 2)
  {
    UInt32 v0 = p->state[i];
    UInt32 v1 = p->state[i + 1];
    FUNC0(digest    , v0);
    FUNC0(digest + 4, v1);
    digest += 8;
  }
  
  FUNC1(p);
}