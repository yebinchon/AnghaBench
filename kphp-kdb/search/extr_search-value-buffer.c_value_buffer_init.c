
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_buffer {int n474; scalar_t__ wptr; scalar_t__ size_ptr; scalar_t__ s; struct connection* c; scalar_t__ w; int ** output_hash; int ** output_item_id; int * output_char; int * output_long; int * output_int; } ;
struct connection {int Out; } ;


 scalar_t__ get_write_ptr (int *,int) ;
 int memcpy (scalar_t__,char*,int) ;
 int value_buffer_output_char_noop ;
 int value_buffer_output_char_text ;
 int * value_buffer_output_hex_long_text ;
 int * value_buffer_output_int_raw ;
 int value_buffer_output_int_text ;
 int * value_buffer_output_item_id_text ;
 int * value_buffer_output_long_raw ;
 int value_buffer_output_long_text ;
 int write_out (int *,char const*,int) ;

int value_buffer_init (struct value_buffer *B, struct connection *c, const char *key, int len, int mode, int flush_margin) {
  B->n474 = 512 - flush_margin;
  if (!mode) {
    B->output_int = &value_buffer_output_int_text;
    B->output_long = &value_buffer_output_long_text;
    B->output_char = &value_buffer_output_char_text;
    B->output_item_id = &value_buffer_output_item_id_text;
    B->output_hash = &value_buffer_output_hex_long_text;
  } else {
    B->output_int = value_buffer_output_int_raw;
    B->output_long = value_buffer_output_long_raw;
    B->output_char = &value_buffer_output_char_noop;
    B->output_item_id = &value_buffer_output_long_raw;
    B->output_hash = &value_buffer_output_long_raw;
  }
  write_out (&c->Out, "VALUE ", 6);
  write_out (&c->Out, key, len);
  B->w = 0;
  B->wptr = get_write_ptr (&c->Out, 512);
  if (!B->wptr) return 0;
  B->c = c;
  B->s = B->wptr + B->n474;
  memcpy (B->wptr, " 0 .........\r\n", 14);
  B->size_ptr = B->wptr + 3;
  B->wptr += 14;
  return 1;
}
