
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stream_state_; scalar_t__ available_out_; scalar_t__ next_out_; } ;
typedef TYPE_1__ BrotliEncoderState ;


 scalar_t__ BROTLI_STREAM_FLUSH_REQUESTED ;
 scalar_t__ BROTLI_STREAM_PROCESSING ;

__attribute__((used)) static void CheckFlushComplete(BrotliEncoderState* s) {
  if (s->stream_state_ == BROTLI_STREAM_FLUSH_REQUESTED &&
      s->available_out_ == 0) {
    s->stream_state_ = BROTLI_STREAM_PROCESSING;
    s->next_out_ = 0;
  }
}
