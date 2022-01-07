
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct PNG_Chunk_IHDR {int ColourType; int BitDepth; } ;
typedef int qboolean ;
typedef int byte ;
 int Q3IMAGE_BYTESPERPIXEL ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean ConvertPixel(struct PNG_Chunk_IHDR *IHDR,
  byte *OutPtr,
  uint8_t *DecompPtr,
  qboolean HasTransparentColour,
  uint8_t *TransparentColour,
  uint8_t *OutPal)
{




 if(!(IHDR && OutPtr && DecompPtr && TransparentColour && OutPal))
 {
  return(qfalse);
 }

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
     uint8_t Step;
     uint8_t GreyValue;

     Step = 0xFF / ((1 << IHDR->BitDepth) - 1);

     GreyValue = DecompPtr[0] * Step;

     OutPtr[0] = GreyValue;
     OutPtr[1] = GreyValue;
     OutPtr[2] = GreyValue;
     OutPtr[3] = 0xFF;





     if(HasTransparentColour)
     {
      if(TransparentColour[1] == DecompPtr[0])
      {
       OutPtr[3] = 0x00;
      }
     }


     break;
    }

    case 133 :
    case 136 :
    {
     OutPtr[0] = DecompPtr[0];
     OutPtr[1] = DecompPtr[0];
     OutPtr[2] = DecompPtr[0];
     OutPtr[3] = 0xFF;





     if(HasTransparentColour)
     {
      if(IHDR->BitDepth == 133)
      {
       if(TransparentColour[1] == DecompPtr[0])
       {
        OutPtr[3] = 0x00;
       }
      }
      else
      {
       if((TransparentColour[0] == DecompPtr[0]) && (TransparentColour[1] == DecompPtr[1]))
       {
        OutPtr[3] = 0x00;
       }
      }
     }

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
    {
     OutPtr[0] = DecompPtr[0];
     OutPtr[1] = DecompPtr[1];
     OutPtr[2] = DecompPtr[2];
     OutPtr[3] = 0xFF;





     if(HasTransparentColour)
     {
      if((TransparentColour[1] == DecompPtr[0]) &&
        (TransparentColour[3] == DecompPtr[1]) &&
        (TransparentColour[5] == DecompPtr[2]))
      {
       OutPtr[3] = 0x00;
      }
     }

     break;
    }

    case 136 :
    {




     OutPtr[0] = DecompPtr[0];
     OutPtr[1] = DecompPtr[2];
     OutPtr[2] = DecompPtr[4];
     OutPtr[3] = 0xFF;





     if(HasTransparentColour)
     {
      if((TransparentColour[0] == DecompPtr[0]) && (TransparentColour[1] == DecompPtr[1]) &&
        (TransparentColour[2] == DecompPtr[2]) && (TransparentColour[3] == DecompPtr[3]) &&
        (TransparentColour[4] == DecompPtr[4]) && (TransparentColour[5] == DecompPtr[5]))
      {
       OutPtr[3] = 0x00;
      }
     }

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
   OutPtr[0] = OutPal[DecompPtr[0] * Q3IMAGE_BYTESPERPIXEL + 0];
   OutPtr[1] = OutPal[DecompPtr[0] * Q3IMAGE_BYTESPERPIXEL + 1];
   OutPtr[2] = OutPal[DecompPtr[0] * Q3IMAGE_BYTESPERPIXEL + 2];
   OutPtr[3] = OutPal[DecompPtr[0] * Q3IMAGE_BYTESPERPIXEL + 3];

   break;
  }

  case 131 :
  {
   switch(IHDR->BitDepth)
   {
    case 133 :
    {
     OutPtr[0] = DecompPtr[0];
     OutPtr[1] = DecompPtr[0];
     OutPtr[2] = DecompPtr[0];
     OutPtr[3] = DecompPtr[1];

     break;
    }

    case 136 :
    {




     OutPtr[0] = DecompPtr[0];
     OutPtr[1] = DecompPtr[0];
     OutPtr[2] = DecompPtr[0];
     OutPtr[3] = DecompPtr[2];

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
    {
     OutPtr[0] = DecompPtr[0];
     OutPtr[1] = DecompPtr[1];
     OutPtr[2] = DecompPtr[2];
     OutPtr[3] = DecompPtr[3];

     break;
    }

    case 136 :
    {




     OutPtr[0] = DecompPtr[0];
     OutPtr[1] = DecompPtr[2];
     OutPtr[2] = DecompPtr[4];
     OutPtr[3] = DecompPtr[6];

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

 return(qtrue);
}
