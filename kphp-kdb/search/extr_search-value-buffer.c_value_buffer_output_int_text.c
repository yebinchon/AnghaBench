
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_buffer {int w; int wptr; } ;


 int sprintf (int,char*,int) ;

__attribute__((used)) static void value_buffer_output_int_text (struct value_buffer *B, int t) {
  B->w += t = sprintf (B->wptr, "%d", t);
  B->wptr += t;
}
