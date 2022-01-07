
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int block_type_trees; int ringbuffer; } ;
typedef TYPE_1__ BrotliDecoderState ;


 int BROTLI_FREE (TYPE_1__*,int ) ;
 int BrotliDecoderStateCleanupAfterMetablock (TYPE_1__*) ;

void BrotliDecoderStateCleanup(BrotliDecoderState* s) {
  BrotliDecoderStateCleanupAfterMetablock(s);

  BROTLI_FREE(s, s->ringbuffer);
  BROTLI_FREE(s, s->block_type_trees);
}
