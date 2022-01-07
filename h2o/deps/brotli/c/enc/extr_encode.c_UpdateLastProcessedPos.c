
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int input_pos_; int last_processed_pos_; } ;
typedef TYPE_1__ BrotliEncoderState ;
typedef int BROTLI_BOOL ;


 int TO_BROTLI_BOOL (int) ;
 scalar_t__ WrapPosition (int ) ;

__attribute__((used)) static BROTLI_BOOL UpdateLastProcessedPos(BrotliEncoderState* s) {
  uint32_t wrapped_last_processed_pos = WrapPosition(s->last_processed_pos_);
  uint32_t wrapped_input_pos = WrapPosition(s->input_pos_);
  s->last_processed_pos_ = s->input_pos_;
  return TO_BROTLI_BOOL(wrapped_input_pos < wrapped_last_processed_pos);
}
