
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_buffer {int w; int wptr; } ;


 int sprintf (int,char*,long long) ;

__attribute__((used)) static void value_buffer_output_long_text (struct value_buffer *B, long long t) {
  int o;
  B->w += o = sprintf (B->wptr, "%lld", t);
  B->wptr += o;
}
