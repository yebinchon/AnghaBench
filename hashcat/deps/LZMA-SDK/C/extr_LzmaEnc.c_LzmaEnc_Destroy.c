
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ISzAllocPtr ;
typedef scalar_t__ CLzmaEncHandle ;
typedef int CLzmaEnc ;


 int ISzAlloc_Free (int ,scalar_t__) ;
 int LzmaEnc_Destruct (int *,int ,int ) ;

void LzmaEnc_Destroy(CLzmaEncHandle p, ISzAllocPtr alloc, ISzAllocPtr allocBig)
{
  LzmaEnc_Destruct((CLzmaEnc *)p, alloc, allocBig);
  ISzAlloc_Free(alloc, p);
}
