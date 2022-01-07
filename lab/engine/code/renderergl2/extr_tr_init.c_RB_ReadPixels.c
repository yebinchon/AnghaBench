
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {int * (* Hunk_AllocateTempMemory ) (scalar_t__) ;} ;
typedef scalar_t__ GLint ;


 int GL_PACK_ALIGNMENT ;
 int GL_RGB ;
 int GL_UNSIGNED_BYTE ;
 int PAD (int,scalar_t__) ;
 int * PADP (intptr_t,scalar_t__) ;
 int qglGetIntegerv (int ,scalar_t__*) ;
 int qglReadPixels (int,int,int,int,int ,int ,int *) ;
 TYPE_1__ ri ;
 int * stub1 (scalar_t__) ;

byte *RB_ReadPixels(int x, int y, int width, int height, size_t *offset, int *padlen)
{
 byte *buffer, *bufstart;
 int padwidth, linelen;
 GLint packAlign;

 qglGetIntegerv(GL_PACK_ALIGNMENT, &packAlign);

 linelen = width * 3;
 padwidth = PAD(linelen, packAlign);


 buffer = ri.Hunk_AllocateTempMemory(padwidth * height + *offset + packAlign - 1);

 bufstart = PADP((intptr_t) buffer + *offset, packAlign);

 qglReadPixels(x, y, width, height, GL_RGB, GL_UNSIGNED_BYTE, bufstart);

 *offset = bufstart - buffer;
 *padlen = padwidth - linelen;

 return buffer;
}
