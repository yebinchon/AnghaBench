
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SRes ;
typedef int ISeqOutStream ;
typedef int ISeqInStream ;
typedef int ICompressProgress ;
typedef int CXzProps ;
typedef int CXzEncHandle ;


 scalar_t__ SZ_ERROR_MEM ;
 scalar_t__ SZ_OK ;
 int XzEnc_Create (int *,int *) ;
 int XzEnc_Destroy (int ) ;
 scalar_t__ XzEnc_Encode (int ,int *,int *,int *) ;
 scalar_t__ XzEnc_SetProps (int ,int const*) ;
 int g_Alloc ;
 int g_BigAlloc ;

SRes Xz_Encode(ISeqOutStream *outStream, ISeqInStream *inStream,
    const CXzProps *props, ICompressProgress *progress)
{
  SRes res;
  CXzEncHandle xz = XzEnc_Create(&g_Alloc, &g_BigAlloc);
  if (!xz)
    return SZ_ERROR_MEM;
  res = XzEnc_SetProps(xz, props);
  if (res == SZ_OK)
    res = XzEnc_Encode(xz, outStream, inStream, progress);
  XzEnc_Destroy(xz);
  return res;
}
