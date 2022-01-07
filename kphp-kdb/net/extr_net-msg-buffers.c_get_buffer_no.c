
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_buffers_chunk {unsigned int bs_shift; unsigned int bs_inverse; int buffer_size; scalar_t__ first_buffer; scalar_t__ tot_buffers; } ;
struct msg_buffer {int dummy; } ;


 int assert (int) ;

inline int get_buffer_no (struct msg_buffers_chunk *C, struct msg_buffer *X) {
  unsigned x = ((char *) X - (char *) C->first_buffer);
  x >>= C->bs_shift;
  x *= C->bs_inverse;
  assert (x <= (unsigned) C->tot_buffers && (char *) X == (char *) C->first_buffer + (C->buffer_size + 16) * x);
  return x;
}
