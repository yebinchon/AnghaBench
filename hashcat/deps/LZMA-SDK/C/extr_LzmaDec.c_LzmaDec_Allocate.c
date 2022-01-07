
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_9__ {int dicSize; } ;
struct TYPE_10__ {int dicBufSize; TYPE_1__ prop; int * dic; } ;
typedef int SizeT ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CLzmaProps ;
typedef TYPE_2__ CLzmaDec ;
typedef int Byte ;


 scalar_t__ ISzAlloc_Alloc (int ,int) ;
 int LzmaDec_AllocateProbs2 (TYPE_2__*,TYPE_1__*,int ) ;
 int LzmaDec_FreeDict (TYPE_2__*,int ) ;
 int LzmaDec_FreeProbs (TYPE_2__*,int ) ;
 int LzmaProps_Decode (TYPE_1__*,int const*,unsigned int) ;
 int RINOK (int ) ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;

SRes LzmaDec_Allocate(CLzmaDec *p, const Byte *props, unsigned propsSize, ISzAllocPtr alloc)
{
  CLzmaProps propNew;
  SizeT dicBufSize;
  RINOK(LzmaProps_Decode(&propNew, props, propsSize));
  RINOK(LzmaDec_AllocateProbs2(p, &propNew, alloc));

  {
    UInt32 dictSize = propNew.dicSize;
    SizeT mask = ((UInt32)1 << 12) - 1;
         if (dictSize >= ((UInt32)1 << 30)) mask = ((UInt32)1 << 22) - 1;
    else if (dictSize >= ((UInt32)1 << 22)) mask = ((UInt32)1 << 20) - 1;;
    dicBufSize = ((SizeT)dictSize + mask) & ~mask;
    if (dicBufSize < dictSize)
      dicBufSize = dictSize;
  }

  if (!p->dic || dicBufSize != p->dicBufSize)
  {
    LzmaDec_FreeDict(p, alloc);
    p->dic = (Byte *)ISzAlloc_Alloc(alloc, dicBufSize);
    if (!p->dic)
    {
      LzmaDec_FreeProbs(p, alloc);
      return SZ_ERROR_MEM;
    }
  }
  p->dicBufSize = dicBufSize;
  p->prop = propNew;
  return SZ_OK;
}
