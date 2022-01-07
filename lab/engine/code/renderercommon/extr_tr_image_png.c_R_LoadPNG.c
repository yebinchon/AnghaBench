
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct PNG_Chunk_IHDR {scalar_t__ CompressionMethod; scalar_t__ FilterMethod; int InterlaceMethod; int ColourType; int Height; int Width; } ;
struct PNG_ChunkHeader {int Type; int Length; } ;
struct BufferedFile {int dummy; } ;
typedef int qboolean ;
typedef int byte ;
struct TYPE_2__ {int* (* Malloc ) (int) ;int (* Free ) (int*) ;int (* Printf ) (int ,char*,char const*) ;} ;
typedef int PNG_ChunkCRC ;


 int BigLong (int ) ;
 void* BufferedFileRead (struct BufferedFile*,int) ;
 int BufferedFileRewind (struct BufferedFile*,int) ;
 int BufferedFileSkip (struct BufferedFile*,int) ;
 int CloseBufferedFile (struct BufferedFile*) ;
 int DecodeImageInterlaced (struct PNG_Chunk_IHDR*,int*,int*,int,int ,int*,int*) ;
 int DecodeImageNonInterlaced (struct PNG_Chunk_IHDR*,int*,int*,int,int ,int*,int*) ;
 int DecompressIDATs (struct BufferedFile*,int**) ;
 scalar_t__ FindChunk (struct BufferedFile*,int) ;
 int INT_MAX ;
 int PNG_ChunkCRC_Size ;
 int PNG_ChunkHeader_Size ;
 int PNG_ChunkType_IHDR ;
 int PNG_ChunkType_PLTE ;
 int PNG_ChunkType_tRNS ;
 int PNG_Chunk_IHDR_Size ;



 scalar_t__ PNG_CompressionMethod_0 ;
 scalar_t__ PNG_FilterMethod_0 ;


 int PNG_Signature ;
 int PNG_Signature_Size ;
 int PRINT_WARNING ;
 int Q3IMAGE_BYTESPERPIXEL ;
 struct BufferedFile* ReadBufferedFile (char const*) ;
 scalar_t__ memcmp (int*,int ,int) ;
 int qfalse ;
 int qtrue ;
 TYPE_1__ ri ;
 int stub1 (int ,char*,char const*) ;
 int stub10 (int*) ;
 int* stub2 (int) ;
 int stub3 (int*) ;
 int stub4 (int*) ;
 int stub5 (int*) ;
 int stub6 (int*) ;
 int stub7 (int*) ;
 int stub8 (int*) ;
 int stub9 (int*) ;

void R_LoadPNG(const char *name, byte **pic, int *width, int *height)
{
 struct BufferedFile *ThePNG;
 byte *OutBuffer;
 uint8_t *Signature;
 struct PNG_ChunkHeader *CH;
 uint32_t ChunkHeaderLength;
 uint32_t ChunkHeaderType;
 struct PNG_Chunk_IHDR *IHDR;
 uint32_t IHDR_Width;
 uint32_t IHDR_Height;
 PNG_ChunkCRC *CRC;
 uint8_t *InPal;
 uint8_t *DecompressedData;
 uint32_t DecompressedDataLength;
 uint32_t i;





 uint8_t OutPal[1024];





 qboolean HasTransparentColour = qfalse;
 uint8_t TransparentColour[6] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};





 if(!(name && pic))
 {
  return;
 }





 *pic = ((void*)0);

 if(width)
 {
  *width = 0;
 }

 if(height)
 {
  *height = 0;
 }





 ThePNG = ReadBufferedFile(name);
 if(!ThePNG)
 {
  return;
 }





 Signature = BufferedFileRead(ThePNG, PNG_Signature_Size);
 if(!Signature)
 {
  CloseBufferedFile(ThePNG);

  return;
 }





 if(memcmp(Signature, PNG_Signature, PNG_Signature_Size))
 {
  CloseBufferedFile(ThePNG);

  return;
 }





 CH = BufferedFileRead(ThePNG, PNG_ChunkHeader_Size);
 if(!CH)
 {
  CloseBufferedFile(ThePNG);

  return;
 }





 ChunkHeaderLength = BigLong(CH->Length);
 ChunkHeaderType = BigLong(CH->Type);





 if(!((ChunkHeaderType == PNG_ChunkType_IHDR) && (ChunkHeaderLength == PNG_Chunk_IHDR_Size)))
 {
  CloseBufferedFile(ThePNG);

  return;
 }





 IHDR = BufferedFileRead(ThePNG, PNG_Chunk_IHDR_Size);
 if(!IHDR)
 {
  CloseBufferedFile(ThePNG);

  return;
 }





 CRC = BufferedFileRead(ThePNG, PNG_ChunkCRC_Size);
 if(!CRC)
 {
  CloseBufferedFile(ThePNG);

  return;
 }
 IHDR_Width = BigLong(IHDR->Width);
 IHDR_Height = BigLong(IHDR->Height);





 if(!((IHDR_Width > 0) && (IHDR_Height > 0))
 || IHDR_Width > INT_MAX / Q3IMAGE_BYTESPERPIXEL / IHDR_Height)
 {
  CloseBufferedFile(ThePNG);

  ri.Printf( PRINT_WARNING, "%s: invalid image size\n", name );

  return;
 }
 if(!((IHDR->CompressionMethod == PNG_CompressionMethod_0) && (IHDR->FilterMethod == PNG_FilterMethod_0)))
 {
  CloseBufferedFile(ThePNG);

  return;
 }





 if(!((IHDR->InterlaceMethod == 128) || (IHDR->InterlaceMethod == 129)))
 {
  CloseBufferedFile(ThePNG);

  return;
 }





 if(IHDR->ColourType == 131)
 {




  if(!FindChunk(ThePNG, PNG_ChunkType_PLTE))
  {
   CloseBufferedFile(ThePNG);

   return;
  }





  CH = BufferedFileRead(ThePNG, PNG_ChunkHeader_Size);
  if(!CH)
  {
   CloseBufferedFile(ThePNG);

   return;
  }





  ChunkHeaderLength = BigLong(CH->Length);
  ChunkHeaderType = BigLong(CH->Type);





  if(!(ChunkHeaderType == PNG_ChunkType_PLTE))
  {
   CloseBufferedFile(ThePNG);

   return;
  }





  if(ChunkHeaderLength % 3)
  {
   CloseBufferedFile(ThePNG);

   return;
  }





  InPal = BufferedFileRead(ThePNG, ChunkHeaderLength);
  if(!InPal)
  {
   CloseBufferedFile(ThePNG);

   return;
  }





  CRC = BufferedFileRead(ThePNG, PNG_ChunkCRC_Size);
  if(!CRC)
  {
   CloseBufferedFile(ThePNG);

   return;
  }





  for(i = 0; i < 256; i++)
  {
   OutPal[i * Q3IMAGE_BYTESPERPIXEL + 0] = 0x00;
   OutPal[i * Q3IMAGE_BYTESPERPIXEL + 1] = 0x00;
   OutPal[i * Q3IMAGE_BYTESPERPIXEL + 2] = 0x00;
   OutPal[i * Q3IMAGE_BYTESPERPIXEL + 3] = 0xFF;
  }





  for(i = 0; i < (ChunkHeaderLength / 3); i++)
  {
   OutPal[i * Q3IMAGE_BYTESPERPIXEL + 0] = InPal[i*3+0];
   OutPal[i * Q3IMAGE_BYTESPERPIXEL + 1] = InPal[i*3+1];
   OutPal[i * Q3IMAGE_BYTESPERPIXEL + 2] = InPal[i*3+2];
   OutPal[i * Q3IMAGE_BYTESPERPIXEL + 3] = 0xFF;
  }
 }
 if(FindChunk(ThePNG, PNG_ChunkType_tRNS))
 {
  uint8_t *Trans;





  CH = BufferedFileRead(ThePNG, PNG_ChunkHeader_Size);
  if(!CH)
  {
   CloseBufferedFile(ThePNG);

   return;
  }





  ChunkHeaderLength = BigLong(CH->Length);
  ChunkHeaderType = BigLong(CH->Type);





  if(!(ChunkHeaderType == PNG_ChunkType_tRNS))
  {
   CloseBufferedFile(ThePNG);

   return;
  }





  Trans = BufferedFileRead(ThePNG, ChunkHeaderLength);
  if(!Trans)
  {
   CloseBufferedFile(ThePNG);

   return;
  }





  CRC = BufferedFileRead(ThePNG, PNG_ChunkCRC_Size);
  if(!CRC)
  {
   CloseBufferedFile(ThePNG);

   return;
  }





  switch(IHDR->ColourType)
  {
   case 132 :
   {
    if(ChunkHeaderLength != 2)
    {
     CloseBufferedFile(ThePNG);

     return;
    }

    HasTransparentColour = qtrue;






    TransparentColour[0] = Trans[0];
    TransparentColour[1] = Trans[1];

    break;
   }

   case 130 :
   {
    if(ChunkHeaderLength != 6)
    {
     CloseBufferedFile(ThePNG);

     return;
    }

    HasTransparentColour = qtrue;






    TransparentColour[0] = Trans[0];
    TransparentColour[1] = Trans[1];
    TransparentColour[2] = Trans[2];
    TransparentColour[3] = Trans[3];
    TransparentColour[4] = Trans[4];
    TransparentColour[5] = Trans[5];

    break;
   }

   case 131 :
   {




    if(ChunkHeaderLength > 256)
    {
     CloseBufferedFile(ThePNG);

     return;
    }

    HasTransparentColour = qtrue;





    for(i = 0; i < ChunkHeaderLength; i++)
    {
     OutPal[i * Q3IMAGE_BYTESPERPIXEL + 3] = Trans[i];
    }

    break;
   }





   default :
   {
    CloseBufferedFile(ThePNG);

    return;
   }
  }
 }





 if(!BufferedFileRewind(ThePNG, -1))
 {
  CloseBufferedFile(ThePNG);

  return;
 }





 if(!BufferedFileSkip(ThePNG, PNG_Signature_Size))
 {
  CloseBufferedFile(ThePNG);

  return;
 }





 DecompressedDataLength = DecompressIDATs(ThePNG, &DecompressedData);
 if(!(DecompressedDataLength && DecompressedData))
 {
  CloseBufferedFile(ThePNG);

  return;
 }





 OutBuffer = ri.Malloc(IHDR_Width * IHDR_Height * Q3IMAGE_BYTESPERPIXEL);
 if(!OutBuffer)
 {
  ri.Free(DecompressedData);
  CloseBufferedFile(ThePNG);

  return;
 }





 switch(IHDR->InterlaceMethod)
 {
  case 128 :
  {
   if(!DecodeImageNonInterlaced(IHDR, OutBuffer, DecompressedData, DecompressedDataLength, HasTransparentColour, TransparentColour, OutPal))
   {
    ri.Free(OutBuffer);
    ri.Free(DecompressedData);
    CloseBufferedFile(ThePNG);

    return;
   }

   break;
  }

  case 129 :
  {
   if(!DecodeImageInterlaced(IHDR, OutBuffer, DecompressedData, DecompressedDataLength, HasTransparentColour, TransparentColour, OutPal))
   {
    ri.Free(OutBuffer);
    ri.Free(DecompressedData);
    CloseBufferedFile(ThePNG);

    return;
   }

   break;
  }

  default :
  {
   ri.Free(OutBuffer);
   ri.Free(DecompressedData);
   CloseBufferedFile(ThePNG);

   return;
  }
 }





 *pic = OutBuffer;





 if(width)
 {
  *width = IHDR_Width;
 }

 if(height)
 {
  *height = IHDR_Height;
 }





 ri.Free(DecompressedData);





 CloseBufferedFile(ThePNG);
}
