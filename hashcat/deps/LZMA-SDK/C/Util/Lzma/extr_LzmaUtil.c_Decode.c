
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int header ;
typedef int UInt64 ;
typedef int SRes ;
typedef int ISeqOutStream ;
typedef int ISeqInStream ;
typedef int CLzmaDec ;


 int Decode2 (int *,int *,int *,int) ;
 int LZMA_PROPS_SIZE ;
 int LzmaDec_Allocate (int *,unsigned char*,int,int *) ;
 int LzmaDec_Construct (int *) ;
 int LzmaDec_Free (int *,int *) ;
 int RINOK (int ) ;
 int SeqInStream_Read (int *,unsigned char*,int) ;
 int g_Alloc ;

__attribute__((used)) static SRes Decode(ISeqOutStream *outStream, ISeqInStream *inStream)
{
  UInt64 unpackSize;
  int i;
  SRes res = 0;

  CLzmaDec state;


  unsigned char header[LZMA_PROPS_SIZE + 8];



  RINOK(SeqInStream_Read(inStream, header, sizeof(header)));

  unpackSize = 0;
  for (i = 0; i < 8; i++)
    unpackSize += (UInt64)header[LZMA_PROPS_SIZE + i] << (i * 8);

  LzmaDec_Construct(&state);
  RINOK(LzmaDec_Allocate(&state, header, LZMA_PROPS_SIZE, &g_Alloc));
  res = Decode2(&state, outStream, inStream, unpackSize);
  LzmaDec_Free(&state, &g_Alloc);
  return res;
}
