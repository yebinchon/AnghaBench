
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;



__attribute__((used)) static void RawImage_SwizzleRA( byte *data, int width, int height )
{
 int i;
 byte *ptr = data, swap;

 for (i=0; i<width*height; i++, ptr+=4)
 {

  swap = ptr[0];
  ptr[0] = ptr[3];
  ptr[3] = swap;
 }
}
