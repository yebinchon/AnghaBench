
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_4__ {scalar_t__ dicSize; } ;
struct TYPE_5__ {scalar_t__ dic; scalar_t__ dicPos; scalar_t__ checkDicSize; scalar_t__ processedPos; TYPE_1__ prop; } ;
typedef scalar_t__ SizeT ;
typedef TYPE_2__ CLzmaDec ;
typedef int Byte ;


 int memcpy (scalar_t__,int const*,scalar_t__) ;

__attribute__((used)) static void LzmaDec_UpdateWithUncompressed(CLzmaDec *p, const Byte *src, SizeT size)
{
  memcpy(p->dic + p->dicPos, src, size);
  p->dicPos += size;
  if (p->checkDicSize == 0 && p->prop.dicSize - p->processedPos <= size)
    p->checkDicSize = p->prop.dicSize;
  p->processedPos += (UInt32)size;
}
