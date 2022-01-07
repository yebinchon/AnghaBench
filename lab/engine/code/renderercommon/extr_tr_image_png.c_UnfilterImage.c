
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int qboolean ;







 int PredictPaeth (int,int,int) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean UnfilterImage(uint8_t *DecompressedData,
  uint32_t ImageHeight,
  uint32_t BytesPerScanline,
  uint32_t BytesPerPixel)
{
 uint8_t *DecompPtr;
 uint8_t FilterType;
 uint8_t *PixelLeft, *PixelUp, *PixelUpLeft;
 uint32_t w, h, p;





 uint8_t Zeros[8] = {0, 0, 0, 0, 0, 0, 0, 0};





 if(!(DecompressedData && BytesPerPixel))
 {
  return(qfalse);
 }





 if((!ImageHeight) || (!BytesPerScanline))
 {
  return(qtrue);
 }





 DecompPtr = DecompressedData;
 for(h = 0; h < ImageHeight; h++)
 {




  FilterType = *DecompPtr;
  DecompPtr++;





  PixelLeft = Zeros;







  if(h > 0)
  {
   PixelUp = DecompPtr - (BytesPerScanline + 1);
  }
  else
  {
   PixelUp = Zeros;
  }





  PixelUpLeft = Zeros;





  for(w = 0; w < (BytesPerScanline / BytesPerPixel); w++)
  {




   for(p = 0; p < BytesPerPixel; p++)
   {
    switch(FilterType)
    {
     case 131 :
     {




      break;
     }

     case 129 :
     {
      DecompPtr[p] += PixelLeft[p];

      break;
     }

     case 128 :
     {
      DecompPtr[p] += PixelUp[p];

      break;
     }

     case 132 :
     {
      DecompPtr[p] += ((uint8_t) ((((uint16_t) PixelLeft[p]) + ((uint16_t) PixelUp[p])) / 2));

      break;
     }

     case 130 :
     {
      DecompPtr[p] += PredictPaeth(PixelLeft[p], PixelUp[p], PixelUpLeft[p]);

      break;
     }

     default :
     {
      return(qfalse);
     }
    }
   }

   PixelLeft = DecompPtr;





   if(h > 0)
   {
    PixelUpLeft = DecompPtr - (BytesPerScanline + 1);
   }





   DecompPtr += BytesPerPixel;





   if(h > 0)
   {
    PixelUp = DecompPtr - (BytesPerScanline + 1);
   }
  }
 }

 return(qtrue);
}
