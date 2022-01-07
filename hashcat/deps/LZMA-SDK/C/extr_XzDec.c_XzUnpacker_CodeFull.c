
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SizeT ;
typedef int SRes ;
typedef int ECoderStatus ;
typedef int ECoderFinishMode ;
typedef int CXzUnpacker ;
typedef int Byte ;


 int True ;
 int XzUnpacker_Code (int *,int *,int *,int const*,int *,int ,int ,int *) ;
 int XzUnpacker_Init (int *) ;
 int XzUnpacker_SetOutBuf (int *,int *,int ) ;

SRes XzUnpacker_CodeFull(CXzUnpacker *p, Byte *dest, SizeT *destLen,
    const Byte *src, SizeT *srcLen,
    ECoderFinishMode finishMode, ECoderStatus *status)
{
  XzUnpacker_Init(p);
  XzUnpacker_SetOutBuf(p, dest, *destLen);

  return XzUnpacker_Code(p,
      ((void*)0), destLen,
      src, srcLen, True,
      finishMode, status);
}
