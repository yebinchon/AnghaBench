
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int disable_literal_context_modeling; scalar_t__ size_hint; scalar_t__ lgblock; int lgwin; int quality; int mode; } ;
typedef TYPE_1__ BrotliEncoderParams ;


 int BROTLI_DEFAULT_MODE ;
 int BROTLI_DEFAULT_QUALITY ;
 int BROTLI_DEFAULT_WINDOW ;
 int BROTLI_FALSE ;

__attribute__((used)) static void BrotliEncoderInitParams(BrotliEncoderParams* params) {
  params->mode = BROTLI_DEFAULT_MODE;
  params->quality = BROTLI_DEFAULT_QUALITY;
  params->lgwin = BROTLI_DEFAULT_WINDOW;
  params->lgblock = 0;
  params->size_hint = 0;
  params->disable_literal_context_modeling = BROTLI_FALSE;
}
