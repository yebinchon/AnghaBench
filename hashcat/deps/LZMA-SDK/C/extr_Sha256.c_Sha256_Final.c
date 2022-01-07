
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UInt64 ;
typedef int UInt32 ;
struct TYPE_5__ {int count; int* buffer; int * state; } ;
typedef TYPE_1__ CSha256 ;
typedef int Byte ;


 int SetBe32 (int*,int ) ;
 int Sha256_Init (TYPE_1__*) ;
 int Sha256_WriteByteBlock (TYPE_1__*) ;

void Sha256_Final(CSha256 *p, Byte *digest)
{
  unsigned pos = (unsigned)p->count & 0x3F;
  unsigned i;

  p->buffer[pos++] = 0x80;

  while (pos != (64 - 8))
  {
    pos &= 0x3F;
    if (pos == 0)
      Sha256_WriteByteBlock(p);
    p->buffer[pos++] = 0;
  }

  {
    UInt64 numBits = (p->count << 3);
    SetBe32(p->buffer + 64 - 8, (UInt32)(numBits >> 32));
    SetBe32(p->buffer + 64 - 4, (UInt32)(numBits));
  }

  Sha256_WriteByteBlock(p);

  for (i = 0; i < 8; i += 2)
  {
    UInt32 v0 = p->state[i];
    UInt32 v1 = p->state[i + 1];
    SetBe32(digest , v0);
    SetBe32(digest + 4, v1);
    digest += 8;
  }

  Sha256_Init(p);
}
