
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct PNG_Chunk_IHDR {int ColourType; int BitDepth; int Height; int Width; } ;
typedef int qboolean ;
typedef int byte ;


 int BigLong (int ) ;
 int ConvertPixel (struct PNG_Chunk_IHDR*,int *,int*,int ,int*,int*) ;
 int PNG_NumColourComponents_Grey ;
 int PNG_NumColourComponents_GreyAlpha ;
 int PNG_NumColourComponents_Indexed ;
 int PNG_NumColourComponents_True ;
 int PNG_NumColourComponents_TrueAlpha ;
 int Q3IMAGE_BYTESPERPIXEL ;
 int UnfilterImage (int*,int,int,int) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean DecodeImageNonInterlaced(struct PNG_Chunk_IHDR *IHDR,
  byte *OutBuffer,
  uint8_t *DecompressedData,
  uint32_t DecompressedDataLength,
  qboolean HasTransparentColour,
  uint8_t *TransparentColour,
  uint8_t *OutPal)
{
 uint32_t IHDR_Width;
 uint32_t IHDR_Height;
 uint32_t BytesPerScanline, BytesPerPixel, PixelsPerByte;
 uint32_t w, h, p;
 byte *OutPtr;
 uint8_t *DecompPtr;





 if(!(IHDR && OutBuffer && DecompressedData && DecompressedDataLength && TransparentColour && OutPal))
 {
  return(qfalse);
 }





 IHDR_Width = BigLong(IHDR->Width);
 IHDR_Height = BigLong(IHDR->Height);





 switch(IHDR->ColourType)
 {
  case 132 :
  {
   switch(IHDR->BitDepth)
   {
    case 137 :
    case 135 :
    case 134 :
    {
     BytesPerPixel = 1;
     PixelsPerByte = 8 / IHDR->BitDepth;

     break;
    }

    case 133 :
    case 136 :
    {
     BytesPerPixel = (IHDR->BitDepth / 8) * PNG_NumColourComponents_Grey;
     PixelsPerByte = 1;

     break;
    }

    default :
    {
     return(qfalse);
    }
   }

   break;
  }

  case 129 :
  {
   switch(IHDR->BitDepth)
   {
    case 133 :
    case 136 :
    {
     BytesPerPixel = (IHDR->BitDepth / 8) * PNG_NumColourComponents_True;
     PixelsPerByte = 1;

     break;
    }

    default :
    {
     return(qfalse);
    }
   }

   break;
  }

  case 130 :
  {
   switch(IHDR->BitDepth)
   {
    case 137 :
    case 135 :
    case 134 :
    {
     BytesPerPixel = 1;
     PixelsPerByte = 8 / IHDR->BitDepth;

     break;
    }

    case 133 :
    {
     BytesPerPixel = PNG_NumColourComponents_Indexed;
     PixelsPerByte = 1;

     break;
    }

    default :
    {
     return(qfalse);
    }
   }

   break;
  }

  case 131 :
  {
   switch(IHDR->BitDepth)
   {
    case 133 :
    case 136 :
    {
     BytesPerPixel = (IHDR->BitDepth / 8) * PNG_NumColourComponents_GreyAlpha;
     PixelsPerByte = 1;

     break;
    }

    default :
    {
     return(qfalse);
    }
   }

   break;
  }

  case 128 :
  {
   switch(IHDR->BitDepth)
   {
    case 133 :
    case 136 :
    {
     BytesPerPixel = (IHDR->BitDepth / 8) * PNG_NumColourComponents_TrueAlpha;
     PixelsPerByte = 1;

     break;
    }

    default :
    {
     return(qfalse);
    }
   }

   break;
  }

  default :
  {
   return(qfalse);
  }
 }





 BytesPerScanline = (IHDR_Width * BytesPerPixel + (PixelsPerByte - 1)) / PixelsPerByte;





 if(!(DecompressedDataLength == ((BytesPerScanline + 1) * IHDR_Height)))
 {
  return(qfalse);
 }





 if(!UnfilterImage(DecompressedData, IHDR_Height, BytesPerScanline, BytesPerPixel))
 {
  return(qfalse);
 }





 OutPtr = OutBuffer;
 DecompPtr = DecompressedData;





 for(h = 0; h < IHDR_Height; h++)
 {




  uint32_t CurrPixel;





  DecompPtr++;





  CurrPixel = 0;

  for(w = 0; w < (BytesPerScanline / BytesPerPixel); w++)
  {
   if(PixelsPerByte > 1)
   {
    uint8_t Mask;
    uint32_t Shift;
    uint8_t SinglePixel;

    for(p = 0; p < PixelsPerByte; p++)
    {
     if(CurrPixel < IHDR_Width)
     {
      Mask = (1 << IHDR->BitDepth) - 1;
      Shift = (PixelsPerByte - 1 - p) * IHDR->BitDepth;

      SinglePixel = ((DecompPtr[0] & (Mask << Shift)) >> Shift);

      if(!ConvertPixel(IHDR, OutPtr, &SinglePixel, HasTransparentColour, TransparentColour, OutPal))
      {
       return(qfalse);
      }

      OutPtr += Q3IMAGE_BYTESPERPIXEL;
      CurrPixel++;
     }
    }

   }
   else
   {
    if(!ConvertPixel(IHDR, OutPtr, DecompPtr, HasTransparentColour, TransparentColour, OutPal))
    {
     return(qfalse);
    }


    OutPtr += Q3IMAGE_BYTESPERPIXEL;
   }

   DecompPtr += BytesPerPixel;
  }
 }

 return(qtrue);
}
