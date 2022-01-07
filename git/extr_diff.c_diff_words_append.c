
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* ptr; unsigned long size; } ;
struct diff_words_buffer {TYPE_1__ text; int alloc; } ;


 int ALLOC_GROW (char*,unsigned long,int ) ;
 int memcpy (char*,char*,unsigned long) ;

__attribute__((used)) static void diff_words_append(char *line, unsigned long len,
  struct diff_words_buffer *buffer)
{
 ALLOC_GROW(buffer->text.ptr, buffer->text.size + len, buffer->alloc);
 line++;
 len--;
 memcpy(buffer->text.ptr + buffer->text.size, line, len);
 buffer->text.size += len;
 buffer->text.ptr[buffer->text.size] = '\0';
}
