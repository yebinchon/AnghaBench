
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {scalar_t__* u8; } ;
struct TYPE_5__ {int last_byte_; size_t last_byte_bits_; int available_out_; scalar_t__* next_out_; TYPE_1__ tiny_buf_; } ;
typedef TYPE_2__ BrotliEncoderState ;



__attribute__((used)) static void InjectBytePaddingBlock(BrotliEncoderState* s) {
  uint32_t seal = s->last_byte_;
  size_t seal_bits = s->last_byte_bits_;
  uint8_t* destination;
  s->last_byte_ = 0;
  s->last_byte_bits_ = 0;

  seal |= 0x6u << seal_bits;
  seal_bits += 6;


  if (s->next_out_) {
    destination = s->next_out_ + s->available_out_;
  } else {
    destination = s->tiny_buf_.u8;
    s->next_out_ = destination;
  }
  destination[0] = (uint8_t)seal;
  if (seal_bits > 8) destination[1] = (uint8_t)(seal >> 8);
  s->available_out_ += (seal_bits + 7) >> 3;
}
