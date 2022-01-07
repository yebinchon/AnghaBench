
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ propsAreSet; int propsByte; int enc; } ;
struct TYPE_5__ {int lzmaProps; } ;
typedef int SizeT ;
typedef int SRes ;
typedef TYPE_1__ CLzma2EncProps ;
typedef TYPE_2__ CLzma2EncInt ;
typedef int Byte ;


 int LZMA_PROPS_SIZE ;
 int LzmaEnc_SetProps (int ,int *) ;
 int LzmaEnc_WriteProperties (int ,int *,int*) ;
 int RINOK (int ) ;
 int SZ_OK ;
 scalar_t__ True ;

__attribute__((used)) static SRes Lzma2EncInt_InitStream(CLzma2EncInt *p, const CLzma2EncProps *props)
{
  if (!p->propsAreSet)
  {
    SizeT propsSize = LZMA_PROPS_SIZE;
    Byte propsEncoded[LZMA_PROPS_SIZE];
    RINOK(LzmaEnc_SetProps(p->enc, &props->lzmaProps));
    RINOK(LzmaEnc_WriteProperties(p->enc, propsEncoded, &propsSize));
    p->propsByte = propsEncoded[0];
    p->propsAreSet = True;
  }
  return SZ_OK;
}
