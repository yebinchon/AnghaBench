
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SRes ;
typedef int ILookInStream ;


 int ILookInStream_Look (int const*,void const**,size_t*) ;
 int ILookInStream_Skip (int const*,size_t) ;
 int RINOK (int ) ;
 int SZ_OK ;
 int memcpy (void*,void const*,size_t) ;

SRes LookInStream_LookRead(const ILookInStream *stream, void *buf, size_t *size)
{
  const void *lookBuf;
  if (*size == 0)
    return SZ_OK;
  RINOK(ILookInStream_Look(stream, &lookBuf, size));
  memcpy(buf, lookBuf, *size);
  return ILookInStream_Skip(stream, *size);
}
