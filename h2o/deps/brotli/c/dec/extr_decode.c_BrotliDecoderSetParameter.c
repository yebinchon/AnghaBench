
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int canny_ringbuffer_allocation; } ;
typedef TYPE_1__ BrotliDecoderState ;
typedef int BrotliDecoderParameter ;
typedef int BROTLI_BOOL ;



 int BROTLI_FALSE ;
 int BROTLI_TRUE ;

BROTLI_BOOL BrotliDecoderSetParameter(
    BrotliDecoderState* state, BrotliDecoderParameter p, uint32_t value) {
  switch (p) {
    case 128:
      state->canny_ringbuffer_allocation = !!value ? 0 : 1;
      return BROTLI_TRUE;

    default: return BROTLI_FALSE;
  }
}
