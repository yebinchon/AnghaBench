
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_buffer {char* wptr; int w; } ;



__attribute__((used)) static void value_buffer_output_char_text (struct value_buffer *B, char ch ) {
  *(B->wptr) = ch;
  B->w++;
  B->wptr++;
}
