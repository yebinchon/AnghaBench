
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Printf ) (int ,char*,int) ;} ;
typedef int GLenum ;
 int PRINT_ALL ;
 TYPE_1__ ri ;
 int stub1 (int ,char*,int) ;

__attribute__((used)) static int CalculateMipSize(int width, int height, GLenum picFormat)
{
 int numBlocks = ((width + 3) / 4) * ((height + 3) / 4);
 int numPixels = width * height;

 switch (picFormat)
 {
  case 139:
  case 131:
  case 144:
  case 134:
  case 146:
  case 137:
   return numBlocks * 8;

  case 143:
  case 133:
  case 142:
  case 132:
  case 138:
  case 136:
  case 140:
  case 141:
  case 145:
  case 135:
   return numBlocks * 16;

  case 129:
  case 128:
   return numPixels * 4;

  case 130:
   return numPixels * 8;

  default:
   ri.Printf(PRINT_ALL, "Unsupported texture format %08x\n", picFormat);
   return 0;
 }

 return 0;
}
