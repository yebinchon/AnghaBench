
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_buffer {int wptr; int w; } ;


 int memcpy (int,int*,int) ;

__attribute__((used)) static void value_buffer_output_int_raw (struct value_buffer *B, int t) {
  memcpy (B->wptr, &t, 4);
  B->w += 4;
  B->wptr += 4;
}
