
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Properties; } ;
typedef int SizeT ;


 int LZMA_PROPERTIES_SIZE ;
 int LzmaDecodeProperties (int *,unsigned char*,int) ;
 unsigned char lzma_get_byte () ;
 int lzma_outsize ;
 TYPE_1__ lzma_state ;

__attribute__((used)) static int lzma_init_props(void)
{
 unsigned char props[LZMA_PROPERTIES_SIZE];
 int res;
 int i;


 for (i = 0; i < LZMA_PROPERTIES_SIZE; i++)
  props[i] = lzma_get_byte();


 lzma_outsize = ((SizeT) lzma_get_byte()) +
         ((SizeT) lzma_get_byte() << 8) +
         ((SizeT) lzma_get_byte() << 16) +
         ((SizeT) lzma_get_byte() << 24);


 for (i = 0; i < 4; i++)
  lzma_get_byte();

 res = LzmaDecodeProperties(&lzma_state.Properties, props,
     LZMA_PROPERTIES_SIZE);
 return res;
}
