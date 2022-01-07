
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt64 ;
typedef int SRes ;
typedef int ILookInStream ;


 int LookInStream_Read (int *,void*,size_t) ;
 int LookInStream_SeekTo (int *,int ) ;
 int RINOK (int ) ;

__attribute__((used)) static SRes LookInStream_SeekRead_ForArc(ILookInStream *stream, UInt64 offset, void *buf, size_t size)
{
  RINOK(LookInStream_SeekTo(stream, offset));
  return LookInStream_Read(stream, buf, size);

}
