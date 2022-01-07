
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_buffer {int wptr; int w; } ;


 int memcpy (int,long long*,int) ;

__attribute__((used)) static void value_buffer_output_long_raw (struct value_buffer *B, long long t) {
  memcpy (B->wptr, &t, 8);
  B->w += 8;
  B->wptr += 8;
}
