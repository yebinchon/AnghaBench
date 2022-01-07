
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_buffer {scalar_t__ size; int pos; int buff; } ;


 char* cstr_dup (char*) ;
 int memcpy (char*,int ,int) ;
 char* tl_zzmalloc (int) ;

char *tl_string_buffer_to_cstr (struct tl_buffer *b) {
  if (b->size == 0) {
    return cstr_dup ("");
  }
  char *s = tl_zzmalloc (b->pos+1);
  memcpy (s, b->buff, b->pos);
  s[b->pos] = 0;
  return s;
}
