
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt64 ;
typedef scalar_t__ SRes ;
typedef int ICompressProgress ;


 scalar_t__ ICompressProgress_Progress (int *,int ,int ) ;
 scalar_t__ SZ_ERROR_PROGRESS ;
 scalar_t__ SZ_OK ;

__attribute__((used)) static SRes Progress(ICompressProgress *p, UInt64 inSize, UInt64 outSize)
{
  return (p && ICompressProgress_Progress(p, inSize, outSize) != SZ_OK) ? SZ_ERROR_PROGRESS : SZ_OK;
}
