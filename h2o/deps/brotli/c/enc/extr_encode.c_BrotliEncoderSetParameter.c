
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int quality; int lgwin; int lgblock; int size_hint; int disable_literal_context_modeling; int mode; } ;
struct TYPE_5__ {TYPE_1__ params; scalar_t__ is_initialized_; } ;
typedef TYPE_2__ BrotliEncoderState ;
typedef int BrotliEncoderParameter ;
typedef int BrotliEncoderMode ;
typedef int BROTLI_BOOL ;


 int BROTLI_FALSE ;






 int BROTLI_TRUE ;
 int TO_BROTLI_BOOL (int) ;

BROTLI_BOOL BrotliEncoderSetParameter(
    BrotliEncoderState* state, BrotliEncoderParameter p, uint32_t value) {

  if (state->is_initialized_) return BROTLI_FALSE;

  switch (p) {
    case 130:
      state->params.mode = (BrotliEncoderMode)value;
      return BROTLI_TRUE;

    case 129:
      state->params.quality = (int)value;
      return BROTLI_TRUE;

    case 131:
      state->params.lgwin = (int)value;
      return BROTLI_TRUE;

    case 132:
      state->params.lgblock = (int)value;
      return BROTLI_TRUE;

    case 133:
      if ((value != 0) && (value != 1)) return BROTLI_FALSE;
      state->params.disable_literal_context_modeling = TO_BROTLI_BOOL(!!value);
      return BROTLI_TRUE;

    case 128:
      state->params.size_hint = value;
      return BROTLI_TRUE;

    default: return BROTLI_FALSE;
  }
}
