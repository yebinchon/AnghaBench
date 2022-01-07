
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ stream_state_; } ;
typedef TYPE_1__ BrotliEncoderState ;
typedef int BROTLI_BOOL ;


 scalar_t__ BROTLI_STREAM_FINISHED ;
 int BrotliEncoderHasMoreOutput (TYPE_1__*) ;
 int TO_BROTLI_BOOL (int) ;

BROTLI_BOOL BrotliEncoderIsFinished(BrotliEncoderState* s) {
  return TO_BROTLI_BOOL(s->stream_state_ == BROTLI_STREAM_FINISHED &&
      !BrotliEncoderHasMoreOutput(s));
}
