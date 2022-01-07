
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SRes ;
typedef int ISeqOutStream ;
typedef int CXzStreamFlags ;
typedef int CXzEncIndex ;


 scalar_t__ SZ_OK ;
 int XzEncIndex_Construct (int *) ;
 int XzEncIndex_Free (int *,int *) ;
 scalar_t__ XzEncIndex_WriteFooter (int *,int ,int *) ;
 scalar_t__ Xz_WriteHeader (int ,int *) ;

SRes Xz_EncodeEmpty(ISeqOutStream *outStream)
{
  SRes res;
  CXzEncIndex xzIndex;
  XzEncIndex_Construct(&xzIndex);
  res = Xz_WriteHeader((CXzStreamFlags)0, outStream);
  if (res == SZ_OK)
    res = XzEncIndex_WriteFooter(&xzIndex, (CXzStreamFlags)0, outStream);
  XzEncIndex_Free(&xzIndex, ((void*)0));
  return res;
}
