
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int BufferLim; int Buffer; } ;
typedef int SizeT ;
typedef TYPE_1__ CLzmaDecoderState ;


 int LzmaDecode (TYPE_1__*,int *,unsigned char*,int ,int *) ;
 int data ;
 int datalen ;
 int lzma_callback ;

__attribute__((used)) static int decompress_data(CLzmaDecoderState *vs, unsigned char *outStream,
   SizeT outSize)
{
 SizeT op;






 return LzmaDecode(vs, &lzma_callback, outStream, outSize, &op);
}
