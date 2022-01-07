
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct PNG_ChunkHeader {int Type; int Length; } ;
struct BufferedFile {int dummy; } ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {int (* Free ) (int *) ;int * (* Malloc ) (int) ;} ;


 int BigLong (int ) ;
 void* BufferedFileRead (struct BufferedFile*,int) ;
 int BufferedFileRewind (struct BufferedFile*,int) ;
 int BufferedFileSkip (struct BufferedFile*,scalar_t__) ;
 int FindChunk (struct BufferedFile*,int) ;
 scalar_t__ PNG_ChunkCRC_Size ;
 int PNG_ChunkHeader_Size ;
 int PNG_ChunkType_IDAT ;
 int PNG_ZlibCheckValue_Size ;
 int PNG_ZlibHeader_Size ;
 int memcpy (int *,int *,int) ;
 scalar_t__ puff (int *,int*,int *,int*) ;
 scalar_t__ qtrue ;
 TYPE_1__ ri ;
 int * stub1 (int) ;
 int stub2 (int *) ;
 int stub3 (int *) ;
 int stub4 (int *) ;
 int stub5 (int *) ;
 int * stub6 (int) ;
 int stub7 (int *) ;
 int stub8 (int *) ;
 int stub9 (int *) ;

__attribute__((used)) static uint32_t DecompressIDATs(struct BufferedFile *BF, uint8_t **Buffer)
{
 uint8_t *DecompressedData;
 uint32_t DecompressedDataLength;

 uint8_t *CompressedData;
 uint8_t *CompressedDataPtr;
 uint32_t CompressedDataLength;

 struct PNG_ChunkHeader *CH;

 uint32_t Length;
 uint32_t Type;

 int BytesToRewind;

 int32_t puffResult;
 uint8_t *puffDest;
 uint32_t puffDestLen;
 uint8_t *puffSrc;
 uint32_t puffSrcLen;





 if(!(BF && Buffer))
 {
  return(-1);
 }





 DecompressedData = ((void*)0);
 *Buffer = DecompressedData;

 CompressedData = ((void*)0);
 CompressedDataLength = 0;

 BytesToRewind = 0;





 if(!FindChunk(BF, PNG_ChunkType_IDAT))
 {
  return(-1);
 }





 while(qtrue)
 {




  CH = BufferedFileRead(BF, PNG_ChunkHeader_Size);
  if(!CH)
  {





   BufferedFileRewind(BF, BytesToRewind);

   return(-1);
  }





  Length = BigLong(CH->Length);
  Type = BigLong(CH->Type);





  if(!(Type == PNG_ChunkType_IDAT))
  {
   BufferedFileRewind(BF, PNG_ChunkHeader_Size);

   break;
  }





  BytesToRewind += PNG_ChunkHeader_Size;





  if(Length)
  {
   if(!BufferedFileSkip(BF, Length + PNG_ChunkCRC_Size))
   {
    BufferedFileRewind(BF, BytesToRewind);

    return(-1);
   }

   BytesToRewind += Length + PNG_ChunkCRC_Size;
   CompressedDataLength += Length;
  }
 }

 BufferedFileRewind(BF, BytesToRewind);

 CompressedData = ri.Malloc(CompressedDataLength);
 if(!CompressedData)
 {
  return(-1);
 }

 CompressedDataPtr = CompressedData;





 while(qtrue)
 {




  CH = BufferedFileRead(BF, PNG_ChunkHeader_Size);
  if(!CH)
  {
   ri.Free(CompressedData);

   return(-1);
  }





  Length = BigLong(CH->Length);
  Type = BigLong(CH->Type);





  if(!(Type == PNG_ChunkType_IDAT))
  {
   BufferedFileRewind(BF, PNG_ChunkHeader_Size);

   break;
  }





  if(Length)
  {
   uint8_t *OrigCompressedData;

   OrigCompressedData = BufferedFileRead(BF, Length);
   if(!OrigCompressedData)
   {
    ri.Free(CompressedData);

    return(-1);
   }

   if(!BufferedFileSkip(BF, PNG_ChunkCRC_Size))
   {
    ri.Free(CompressedData);

    return(-1);
   }

   memcpy(CompressedDataPtr, OrigCompressedData, Length);
   CompressedDataPtr += Length;
  }
 }





 puffDest = ((void*)0);
 puffDestLen = 0;





 puffSrc = CompressedData + PNG_ZlibHeader_Size;
 puffSrcLen = CompressedDataLength - PNG_ZlibHeader_Size - PNG_ZlibCheckValue_Size;





 puffResult = puff(puffDest, &puffDestLen, puffSrc, &puffSrcLen);
 if(!((puffResult == 0) && (puffDestLen > 0)))
 {
  ri.Free(CompressedData);

  return(-1);
 }





 DecompressedData = ri.Malloc(puffDestLen);
 if(!DecompressedData)
 {
  ri.Free(CompressedData);

  return(-1);
 }





 puffDest = DecompressedData;
 puffSrc = CompressedData + PNG_ZlibHeader_Size;
 puffSrcLen = CompressedDataLength - PNG_ZlibHeader_Size - PNG_ZlibCheckValue_Size;





 puffResult = puff(puffDest, &puffDestLen, puffSrc, &puffSrcLen);





 ri.Free(CompressedData);





 if(!((puffResult == 0) && (puffDestLen > 0)))
 {
  ri.Free(DecompressedData);

  return(-1);
 }





 DecompressedDataLength = puffDestLen;
 *Buffer = DecompressedData;

 return(DecompressedDataLength);
}
