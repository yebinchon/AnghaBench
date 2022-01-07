
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {int (* Hunk_FreeTempMemory ) (int *) ;int (* FS_WriteFile ) (char*,int *,size_t) ;int * (* Hunk_AllocateTempMemory ) (size_t) ;} ;


 size_t RE_SaveJPGToBuffer (int *,size_t,int,int,int,int *,int) ;
 TYPE_1__ ri ;
 int * stub1 (size_t) ;
 int stub2 (char*,int *,size_t) ;
 int stub3 (int *) ;

void RE_SaveJPG(char * filename, int quality, int image_width, int image_height, byte *image_buffer, int padding)
{
  byte *out;
  size_t bufSize;

  bufSize = image_width * image_height * 3;
  out = ri.Hunk_AllocateTempMemory(bufSize);

  bufSize = RE_SaveJPGToBuffer(out, bufSize, quality, image_width, image_height, image_buffer, padding);
  ri.FS_WriteFile(filename, out, bufSize);

  ri.Hunk_FreeTempMemory(out);
}
