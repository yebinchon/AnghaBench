
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;
typedef int THREAD_FUNC_TYPE ;
typedef scalar_t__ SRes ;
typedef int CMtSync ;


 scalar_t__ MtSync_Create2 (int *,int ,void*,int ) ;
 int MtSync_Destruct (int *) ;
 scalar_t__ SZ_OK ;

__attribute__((used)) static SRes MtSync_Create(CMtSync *p, THREAD_FUNC_TYPE startAddress, void *obj, UInt32 numBlocks)
{
  SRes res = MtSync_Create2(p, startAddress, obj, numBlocks);
  if (res != SZ_OK)
    MtSync_Destruct(p);
  return res;
}
