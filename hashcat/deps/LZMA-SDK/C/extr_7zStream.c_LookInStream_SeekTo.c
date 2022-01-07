
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt64 ;
typedef int SRes ;
typedef int Int64 ;
typedef int ILookInStream ;


 int ILookInStream_Seek (int const*,int *,int ) ;
 int SZ_SEEK_SET ;

SRes LookInStream_SeekTo(const ILookInStream *stream, UInt64 offset)
{
  Int64 t = offset;
  return ILookInStream_Seek(stream, &t, SZ_SEEK_SET);
}
